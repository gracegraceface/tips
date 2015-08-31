# tips

codepath homework

Time Spent: approx 5 hours.

Required Story: Basic Tip Calculator, Completed Optional Story: Custom Tip %

Notes: Basic Tip Calculator, as in Tim's tutorial. I included a new feature that allows users to enter and apply a custom tip percentage. This field begins with the text "custom %" which disappears once the user begins typing in the field. The user can also toggle between the existing set Tip percentage options, and the custom field.

I initially wanted to create a 4th button in the Segmented Control display for the custom percentage--but it's a bit too complex for me to figure out right now. I guessed it would require creating a new page where there is a text field layered on top of the Segmented Control. Instead, I was able to add a new text field that replaces the preset percentages with one a user can enter on their own. I actually spent the majority of my time on trying to restrict the custom % text field to 2 digits. From some research, I think I have to do it via delegates, but don't quite understand that concept yet, and I couldn't manipulate existing examples to work for me in this project. Unfortunately, that means you can enter a percentage that is over 100%, and that doesn't really make sense here...

![alt tag](https://github.com/gracegraceface/tips/blob/master/tipcalculator_2.gif)
