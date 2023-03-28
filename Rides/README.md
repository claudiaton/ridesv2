#  Task - iOS Assignment 
 
To help us better understand your knowledge and experience with iOS 
development, please attempt the following assignment.  
 
You are required to make your code available in a public Github repository. If 
needed visit https://github.com/  
  
Please read the directions carefully and be sure to implement the Base 
Requirements before attempting any Additional Requirements. 
 
Directions: 
1. Use Xcode to create a new project: 
• Name Rides 
• Language: Swift or SwiftUI 
• Minimum iOS version – 15.0 
2. Your application must:  
• use MVVM architecture design pattern 
• be responsive and respect safe area for devices with notch 
• use app theme/styling at your discretion and be presentable (perfection is 
not required)  
Please note: This is your opportunity to showcase the knowledge of various 
design patterns and practices. Comments in the code are welcome, 
especially if they explain your thought process and the reason behind certain 
decisions.  
3. Implement solutions for the Base Requirements listed below. 
4. Complete Additional Requirements listed below only when Base 
Requirements have been completed. 
5. When your assignment is complete push your code to your public Github 
repository and notify your hiring manager. 
  
Base Requirements   
Using git, create a new branch named feature/base_requirements and 
implement the following:  
  
Screen 1 - Vehicle List  
  
1. Display an input field and a button  
2. When the button is pressed retrieve a list of vehicles from 
https://random-data-api.com/api/vehicle/random_vehicle 
where the number of items retrieved is determined by the input value from the 
user. 
 API documentation can be found here: https://random-data-
api.com/legacy_documentation  
 
3. Display the retrieved list sorted by vin by default below the input field and 
button. Provide an opportunity to change sorting option by car_type 
• For each list item display the vehicle's make_and_model and vin 
returned from the API  
• Errors or failures from the API call should be handled silently  
 
Screen 2 - Vehicle Details  
1. Allow items on the Vehicle List screen to be clickable and when pressed 
navigate to a Vehicle Details screen  
2. On the Vehicle Details screen display the following returned from the API:  
• vin  
• make_and_model  
• color  
• car_type  
  
Using git, commit your work to branch 
feature/base_requirements and push to your remote repository 
Additional Requirements   
 
Using git, create a new branch named 
feature/additional_requirements from  
feature/base_requirements and implement the following:  
  
1. Implement validation for the input field on the Vehicle List screen  
• value must be an integer in the range 1 to 100  
• when the value is in range, proceed with the API call  
• when the value is not in range, do not make an API call and notify the 
user to make a correction  
• add unit test(s) for the validation logic 
 
2. Extend details page by adding another view to display estimated carbon 
emissions. This view should be accessed by swiping horizontally (consider 
UIPageViewController or achieve a similar functionality with UICollectionView if 
using UIKit).  
3. On estimated carbon emissions card calculate emissions based on the vehicles  
kilometrage returned from the API, assuming:  
• for the first 5000km travelled, 1 unit of carbon is emitted per kilometre  
• after the first 5000km travelled, 1.5 units is emitted per kilometre  
• add unit test(s) for this calculation  
  
Using git, commit your work to branch 
feature/additional_requirements and push to your remote repository. 
  
When you are finished your assignment:   
Using git, create a new branch from feature/base_requirements named 
final, create a single commit that contains all your work, and push to your 
remote repository. 


#  References

https://www.youtube.com/watch?v=Ey7VKG2fzaA
https://fxstudio.dev/dynamic-list-swiftui-notes-39/
https://spin.atomicobject.com/2015/12/23/swift-uipageviewcontroller-tutorial/
https://stackoverflow.com/questions/61236472/press-swiftui-button-and-go-to-the-next-screen-next-view-when-server-callback
https://www.youtube.com/watch?v=CimY_Sr3gWw
MVVM https://www.youtube.com/watch?v=FwGMU_Grnf8 
SWIFTUI VIEWS ETC https://www.youtube.com/@seanallen 
TESTS https://www.youtube.com/watch?v=vfCm6zCHv44 
