<h1>README</h1>

<h2>Human Activity Recognition Using Smartphones</h2>

<h3>Data analysis and tidying</h3>
<p>The single script contained in this repo, run_analysis.R, operates on the data set found at <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">UCI Human Activity Recognition Using Smartphones</a>. It downloads the zip containing the data set from the UCI site, and extracts subject, activity, training and testing data to form into tidy datasets. The script produces two data sets:</p>
<ol>
<li>A dataframe consisting of all means and standard deviations for all subjects and activities from training and testing data.
<ul><li>Stored and accessible in the global workspace as variable 'HARUSdata'</li></ul></li>
<li>The means of all fields from part 1 for each subject-activity, aggregated from both training and testing data
<ul><li>Stored and accessible in the global workspace as variable 'HARUSaverages'</li></ul></li>
</ol>
<p>In addition, the script automatically generates a readable dataframe (by calling View() from the dplyr package) of the dataframe created in item 2 above.</p>

<h3>What it does:</h3>
<p>The script creates the tidy data sets by performing the following actions:</p>
<ol>
<li>Download the zip from uci.edu (if the zip already exists, the code skips this step)</li>
<li>Unzip the files and directories, and stores them in a list 'dataFiles'</li>
<li>Extract activity names and measurement labels for use in variable names
<ul>
<li>Activity names from 'activity_labels.txt'</li>
<li>Measurement labels from 'features.txt.</li>
</ul>
<li>Compile datasets for both training and testing data (from 'test' and 'train' directories)</li>
<ol>
<li>Form column data from 'subject_[test/train].txt' and 'y_[test/train].txt', then binds these columns to create subject-activity pairs</li>
<li>Add a column 'Type', based on whether the data was read from 'test' or 'train' data.</li>
<li>Form column data from 'X_[test/train].txt' (actual measurements corresponding to subject-test pair rows), and binds this column to the rest of the dataframe.</li>
</ol>
<li>Bind of the data frames created from the test and train data sets into a single dataframe.</li>
<li>Replace all activity number with human readable activity names obtained from (3)</li>
<li>Create 'Subject', 'Activity', 'Type', and all measurement label (from (3)) column names</li>
<li>Select only measurements columns the measure means or standard deviations, removing all others from the dataframe</li>
<li>Organize observations according to 'Subject', 'Activity', and 'Type', respectively</li>
<li>Group observations by Subject and Activity, and calculate the means of each type of measurement
<ul><li>Note that this steps combines the data from train and test data to calculate a single mean</li></ul></il>
</ol>
<p>Data from (9), corresponding to raw data of mean and standard deviation measurements, are stored in variable 'HARUSdata'. Averaged measurements from (10) are availble in variable 'HARUSaverages'. Upon completion of the script, both should be available in the global workspace.</p>

<h3>Requires</h2>
<ul>
<li>R version 3.0+</li>
<li>dplyr package</li>
<li>R studio (optional, but makes the output of the View() easier to read)
</ul>
<h3>Running run_analysis.R</h2>
<p>Simply source the script from the R console and the script will run automatically to download, extract, compile, and orgnaize the dataframe. Upon completion, two variable containing the dataframe described above will be accessible in the global workspace, and a view of the averaged HARUS data will automatically be generated.</p>

<h4>Example console output</h4>
<p>\> source('run_analysis.R')<br />
[1] "[+] Extracting and reading data file..."<br />
[1] "[+] Reading test and train data..."<br />
Read 2947 items<br />
Read 2947 items<br />
Read 7352 items<br />
Read 7352 items<br />
[1] "[+] Compiling first data set"<br />
[1] "[+] Compiling second data set"<br />
\> str(HARUSaverages)<br />
Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':  180 obs. of  88 variables:<br />
 $ Subject                             : num  1 1 1 1 1 1 2 2 2 2 ...<br />
 $ Activity                            : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...<br />
 $ tBodyAcc.mean...X                   : num  0.222 0.261 0.279 0.277 0.289 ...<br />
 $ tBodyAcc.mean...Y                   : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...<br />
 $ tBodyAcc.mean...Z                   : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...<br />
...
</p>