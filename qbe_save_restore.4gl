IMPORT util

PUBLIC TYPE qbe_save_restore_type RECORD
    list DYNAMIC ARRAY OF RECORD
        name STRING,
        value STRING
    END RECORD
END RECORD

FUNCTION (this qbe_save_restore_type) save()
    DEFINE formfield_node om.DomNode
    DEFINE formfield_list om.NodeList
    DEFINE i INTEGER
    DEFINE d ui.Dialog

    CALL this.list.clear()
    LET d = ui.Dialog.getCurrent()

    LET formfield_list =
        ui.Interface.getRootNode(
            ).selectByPath("//FormField[@dialogType=\"Construct\"]")
    FOR i = 1 TO formfield_list.getLength()
        LET formfield_node = formfield_list.item(i)
        LET this.list[i].name = formfield_node.getAttribute("name")
        LET this.list[i].value = d.getFieldBuffer(this.list[i].name)
    END FOR
END FUNCTION

FUNCTION (this qbe_save_restore_type) restore()
    DEFINE i INTEGER

    FOR i = 1 TO this.list.getLength()
        TRY
            CALL ui.Form.displayTo(
                this.list[i].value, this.list[i].name, NULL, NULL)
        CATCH
            -- Don't worry if something goes wrong, more onto next field
        END TRY
    END FOR
END FUNCTION

-- add other methods to perhaps save/restore to/from database or file based
-- on your requirements
