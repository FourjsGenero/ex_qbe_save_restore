IMPORT FGL qbe_save_restore

DEFINE this_qbe qbe_save_restore.qbe_save_restore_type
MAIN
    DEFINE sql STRING

    -- to test press, enter some QBE criteria into the fields, press save, clear form, restore in that order

    OPEN WINDOW w WITH FORM "qbe_save_restore_test"
    CONSTRUCT BY NAME sql
        ON field1, field2, field3, field4, field5, field6, field7, field8

        ON ACTION save ATTRIBUTES(TEXT = "Save")
            CALL this_qbe.save()
        ON ACTION clear ATTRIBUTES(TEXT = "Clear Form")
            CLEAR FORM
        ON ACTION restore ATTRIBUTES(TEXT = "Restore")
            CALL this_qbe.restore()

    END CONSTRUCT
END MAIN
