#! /bin/bash

echo "copying copilot_instructions/.github/copilot-instructions.md to" 
echo "        $1/.github/copilot-instructions.md"
cd $1
mkdir -p .github
cd .github
cp $HOME/projects/0_core/copilot_instructions/.github/copilot-instructions.md .