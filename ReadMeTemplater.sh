
echo "----- Welcome to QuickReadME for Github -----"
echo ""
echo "Let's get you started, how about starting with a description?"
echo "Please, enter a brief, but detailed description of your code to share with others: "
read desc
echo ""
echo "Perfect! Now, let's make it clear what the code consists of."
echo "Are you ready to enter your stack? (Y/n)"
read permission
idx=0
STACK=()
while [ $permission == "Y" ]; do
    echo "Enter stack tool: "
    read tool

    STACK[$idx]="$tool"
    ((idx+=1))

    echo "Add another tool?"
    read permission

done
echo "Awesome. Next, are there any warnings or disclaimers we need to know? (y/n)"
read warning_status
echo ""
if [ $warning_status == "y" ]; then
    echo "Awesome, please write a quick disclaimer: "
    read disclaimer
    echo "Great, just a bit longer..."
    echo ""
    echo "Hmm..."
    echo "Oh my, I forgot your title. Now, what was this project called?"
    read title
    echo "And, the authors? (name, name, name, ...)"
    read authors
    echo "
# $title
Created By: $authors
---

## Description
- $desc

## Disclaimer
- $disclaimer

    " >> README.md
    echo "# Stack" >> README.md
    for ((i=0; i< $stack_count; i++)); do
        echo "- ${STACK[$i]}" >> README.md
        done
elif [  $warning_status == "n"  ]; then
    echo "Aight, just a bit longer..."
    echo "Hmm..."
    echo "Oh my, I forgot your title. Now, what was this project called?"
    read title
    echo "And, the authors? (name, name, name, ...)"
    read authors
    echo "
# $title
Created By: $authors
---

## Description
- $desc

## Usage
{Insert **USAGE INSTRUCTIONS** here}

    " >> README.md

    echo "## Stack" >> README.md
    for ((i=0; i< $stack_count; i++)); do
        echo "- ${STACK[$i]}" >> README.md
        done
    
else
    echo "Error: Not a valid option. No will be used as default."
    echo "Aight, just a bit longer..."
    echo "Hmm..."
    echo "Oh my, I forgot your title. Now, what was this project called?"
    read title
    echo ""
    echo "
# $title

## Description
- $desc

## Usage
{Insert **USAGE INSTRUCTIONS** here}


    " >> README.md
    echo "## Stack" >> README.md
    for ((i = 0; i < $stack_count; i++)); do
        echo "- ${STACK[$i]} " >> README.md
        done
fi
echo "Now, just go into your README file, check the syntax, add any last details, and fill out the USAGE section!"