*> Terminator period ("implicit termination")
IF invalid-record
    IF no-more-records
        NEXT SENTENCE
    ELSE
        READ record-file
            AT END SET no-more-records TO TRUE.

*> Scope terminators ("explicit termination")
IF invalid-record
    IF no-more-records
        CONTINUE
    ELSE
        READ record-file
            AT END SET no-more-records TO TRUE
        END-READ
    END-IF
END-IF
