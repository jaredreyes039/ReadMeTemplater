
echo "----- Welcome to QuickReadME for Github -----"
echo ""
echo "Let's get you started, how about starting with a description?"
echo "Please, enter a brief, but detailed description of your code to share with others: "
read desc
echo ""
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
fi
echo "Now, just go into your README file, check the syntax, add any last details, and fill out the USAGE section!"