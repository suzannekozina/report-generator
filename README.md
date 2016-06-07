# Report Generator, Part 1
​
## Project Overview
​
The first steps towards building a report generator for analyzing data associated with Open Learning Objectives (OLO).
​
## Why I am building this project
It is with great pleasure that in this project I'm integrating three of my most all-consuming interests: high-quality educational materials, Ruby programming language, and JSON (JavaScript Object Notation).
* Education - I want to create tools that support exceptional educational materials with clear learning objectives - therefore my data for this project is coming form the Open Learning Objectives Project (more about the datafile below)
* Ruby - The human-readable quality, the flexible and expressive nature of Ruby, and the plethora of community driven documentation make Ruby a joy to work in. I hope the approachable nature of Ruby will also make this project more appealing to programmers interested in cataloguing learning objectives even if they aren't working in Ruby on a regular basis.
* JSON - The portability of JSON is extremely exciting to me. It is also very easy to track detailed changes to data stored JSON with Git, or other distributed revision control systems. And I when I use JSON, Git, and GitHub together, I can see the 'diff' image for each revision on GitHub — gotta love that!

## Source for Datafile
* Data for the JSON file was obtained on GitHub at OpenEd's public repository of [Open Learning Objectives](https://github.com/openedinc/OpenLearningObjectives) The data in OpenEd's repository is in Excel and XML.  I translated the data into JSON to take advantage of JSON's flexibility, readability, portability, and trackability.
* The Open Learning Objectives project [curriculum license](https://github.com/openedinc/OpenLearningObjectives/blob/master/license.md)
* More information about [Problems That OLO Addresses](https://github.com/openedinc/OpenLearningObjectives/blob/master/README.md)

## What the report-generator will do
###The report will analyze:
* the number of OLOs in a collection
* the number of categories containing OLOs in a collection and # of OLOs in each of the categories
* 'by-grade' results
* key words to locate important concepts

###Report requirements:
* must print out a formatted, human-readable report
* generated reports can be saved to a new distributable file, such as a textfile

## Built with
*Ruby*
​

## Author
Suzanne Kozina
​
## License
[MIT License](LICENSE.txt)
​
