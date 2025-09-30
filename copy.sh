#! /bin/bash

echo "copying copilot_instructions/.github/copilot-instructions.md to" 
echo "        $1/.github/copilot-instructions.md"
cd $1
mkdir -p .github
cd .github
# check if copilot-instructions.md exists
if [ -f copilot-instructions.md ]; then
    echo "copilot-instructions.md already exists, skipping copy"
    exit 0
fi
# copy copilot-instructions.md from copilot_instructions repo
cp $HOME/projects/0_core/copilot_instructions/.github/copilot-instructions.md .
git add copilot-instructions.md
git commit -m "add copilot-instructions.md"
git push