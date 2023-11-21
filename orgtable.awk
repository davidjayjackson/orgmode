BEGIN {
    FS = ",";        # Field Separator is a comma
    OFS = " | ";     # Output Field Separator is ' | '
    print "|---";    # Print the header separator for Org tables
}

{
    printf("| ");    # Start of the Org table row
    for (i = 1; i <= NF; i++) {
        printf("%s", $i);  # Print each field
        if (i < NF) {
            printf(OFS);   # Print the field separator if not the last field
        }
    }
    print " |";      # End of the Org table row
    print "|---";    # Separator for Org table (optional, can be removed for continuous rows)
}
