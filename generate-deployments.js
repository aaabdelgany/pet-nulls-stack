#!/usr/bin/env node

// Usage:

//   Using in-script defaults (3 deployments, 12 instances each)
//   node generate-deployments.js

//   Custom count and/or instances
//   node generate-deployments.js --count 5
//   node generate-deployments.js --count 5 --instances 15

//   This will produce blocks named simple-generated-1, simple-generated-2, etc. Edit DEFAULT_COUNT
//   and DEFAULT_INSTANCES at the top of the file to change the defaults.

// ---- in-script defaults (overridden by CLI args) ----
const DEFAULT_COUNT = 3;
const DEFAULT_INSTANCES = 10;
const OUTPUT_FILE = 'deployments.tfdeploy.hcl';
// -----------------------------------------------------

const fs = require('fs');
const path = require('path');

function parseArgs(argv) {
  const args = argv.slice(2);
  let count = DEFAULT_COUNT;
  let instances = DEFAULT_INSTANCES;

  for (let i = 0; i < args.length; i++) {
    if (args[i] === '--count') {
      count = parseInt(args[++i], 10);
      if (isNaN(count) || count < 1)
        throw new Error('--count must be a positive integer');
    } else if (args[i] === '--instances') {
      instances = parseInt(args[++i], 10);
      if (isNaN(instances) || instances < 1)
        throw new Error('--instances must be a positive integer');
    } else {
      throw new Error(`Unknown argument: ${args[i]}`);
    }
  }

  return { count, instances };
}

function renderDeployment(n, instances) {
  return [
    `deployment "simple-generated-${n}" {`,
    `  inputs = {`,
    `    prefix           = "simple-generated-${n}"`,
    `    instances        = ${instances}`,
    `  }`,
    `}`,
  ].join('\n');
}

try {
  const { count, instances } = parseArgs(process.argv);
  const header =
    '# Copyright (c) HashiCorp, Inc.\n# SPDX-License-Identifier: MPL-2.0';
  const blocks = Array.from({ length: count }, (_, i) =>
    renderDeployment(i + 1, instances),
  ).join('\n\n');
  const content = `${header}\n\n${blocks}\n`;

  const filePath = path.resolve(OUTPUT_FILE);
  fs.writeFileSync(filePath, content, 'utf8');
  console.log(`Wrote ${count} deployment(s) to ${filePath}`);
  for (let i = 1; i <= count; i++)
    console.log(`  • simple-generated-${i}: instances=${instances}`);
} catch (err) {
  console.error(`Error: ${err.message}`);
  process.exit(1);
}
