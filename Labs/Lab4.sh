#!/bin/bash
#Part 1
str1="Methionine"
str2="Leucine"
str3="Cysteine"
str4="Alanine"
str5="Valine"
echo "$str1"
echo "$str2"
echo "$str3"
echo "$str4"
echo "$str5"

total=$((${#str1} + ${#str2} + ${#str3} + ${#str4} + ${#str5}))
echo $total
#Part 2
START_CODON="ATG"
STOP_CODON_1="TAA"
STOP_CODON_2="TAG"
STOP_CODON_3="TGA"
# For `grep`, we'll use a single regular expression pattern for all stop codons.
STOP_CODONS_REGEX="(TAA|TAG|TGA)"

# Define the input file name
file="example2.fasta"

# Use `grep` to first filter out header lines and then count the start codons.
# -v "^>": Invert the match to select lines that DO NOT start with '>'.
# -c: Count the number of matching lines.
start_codon_count=$(grep -v "^>" "$file" | grep -c "^${START_CODON}")

# Use `grep` to count the number of stop codons at the end of lines.
# -v "^>": Invert the match, to select non-matching lines (to skip headers).
# -E: Interpret the pattern as an extended regular expression.
# -c: Count the number of matching lines.
stop_codon_count=$(grep -v "^>" "$file" | grep -E -c "${STOP_CODONS_REGEX}$")

# Print the final counts in a meaningful way
echo "Analysis of codons in $file:"
echo "-----------------------------------"
echo "Start codon ($START_CODON) count: $start_codon_count"
echo "Stop codon ($STOP_CODON_1, $STOP_CODON_2, $STOP_CODON_3) count: $stop_codon_count"
echo $USER
echo $(pwd)
echo $ROOT
echo $(date)
