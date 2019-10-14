# ex_qbe_save_restore
An example of howto save QBE values and reuse them.  It traverses the AUI tree to read the current values from the active Construct to save them, and then to restore them uses the ui.Form.displayTo method to display the saved values.  

Run program and enter some QBE criteria

![Screen Shot 2019-10-15 at 10 18 17](https://user-images.githubusercontent.com/13615993/66784146-1caec900-ef36-11e9-8ab5-cb4a4ccac1aa.png)

Then click Save to save to memory the currently entered QBE criteria, and then click Clear Form.  This should make the form blank

![Screen Shot 2019-10-15 at 10 18 23](https://user-images.githubusercontent.com/13615993/66784155-20425000-ef36-11e9-8869-f753bacf2b82.png)

Then click Restore to display the previously entered values

![Screen Shot 2019-10-15 at 10 18 26](https://user-images.githubusercontent.com/13615993/66784157-259f9a80-ef36-11e9-90f0-a17bfcc67c4e.png)

This module could potentially be extended to save away the values to file or to database
