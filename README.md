# Nullcon Berlin - CodeQL Workshop Setup Instructions

Preliminary workshop presentation slides are now ready for download: [nullcon-24-codeql-workshop.pdf](https://github.com/intrigus-lgtm/nullcon-berlin-2024-workshop/blob/main/nullcon-24-codeql-workshop.pdf)

----

 **Please follow these instructions to the end** (including the [Select CodeQL Database](#select-codeql-database) and [Test your installation](#test-your-installation) sections) before the workshop starts.

You can choose between two options to run the workshop exercises:
* [Option A: GitHub Codespace](#option-a-github-codespace) (Using a Browser or VS Code - CodeQL is run remotely on a Linux based GitHub Codespace in the cloud)
* [Option B: Local installation](#option-b-local-installation) (Using VS Code - CodeQL is run locally on your machine)

## Option A: GitHub Codespace

Use a remote GitHub Codespace to work on the workshop exercises.

### Prerequisites

* Stable internet connection throughout the workshop.
* GitHub account ([sign up](https://github.com/) for free)
* Browser or [Visual Studio Code](https://code.visualstudio.com/download) (VS Code) with the [GitHub Codespaces](https://marketplace.visualstudio.com/items?itemName=GitHub.codespaces) extension installed on your local machine.

Note: The first 120h hours per core of Codespace usage are free per month, we use a codespace with 4 cores for this workshop since 4 cores is the current maximum for free accounts. (If you have a Pro account, we recommend switching to an 8-core machine.)

### Step-by-Step

1. Login to your [GitHub](https://github.com/login) account
2. Go to the repo https://github.com/intrigus-lgtm/nullcon-berlin-2024-workshop / (short link: https://gh.io/nc-2024-ws)
3. Click on Code -> Codespaces
4. Click on the plus sign (+) to create a new codespace.

<img src="images/create-codespace.png"  width="439" alt="Screenshot: Create Codespace, click on plus">

=> VS Code will start in your browser and a remote Codespace will be built (this may take some time).
If you are asked to open the workspace `vscode-codeql-starter.code-workspace` click on "Open Workspace".

5. Continue with [Selecting a CodeQL Database](#select-codeql-database)
6. Then [Test your installation](#test-your-installation)

### Use existing Codespace

If you've already prepared a Codespace this workshop you can simply start it by going to the [codespace repo](https://github.com/intrigus-lgtm/nullcon-berlin-2024-workshop) and clicking on "Code -> Codespaces" and then click on the randomly generated name of this codespace (this will be faster than creating a new one):

<img src="images/use-existing-codespace.png"  width="421" alt="Screenshot: Use existing Codespace">

## Option B: Local installation

Use a local CodeQL installation to work on the workshop exercises.

### Prerequisites

* Requires downloading up to 2 GB of data in total.
* [Visual Studio Code](https://code.visualstudio.com/download) (VS Code) and `git` installed on your local machine.

### Step-by-Step

1. Install [VS Code extension for CodeQL](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-codeql)
2. In the terminal, in a directory specified by you: `$ git clone https://github.com/intrigus-lgtm/nullcon-berlin-2024-workshop.git`
3. `$ cd nullcon-berlin-2024-workshop`
4. `$ git submodule init`
5. `$ git submodule update --recursive`
6. In VS Code: File -> **Open Workspace from File...** `vscode-codeql-starter.code-workspace`

=> VS Code will start and the CodeQL CLI (binaries) will be installed. (approx. 500 MB of additional data need to be downloaded))

<img src="images/codeql-cli-dl.png"  width="399" alt="Screenshot: CodeQL for VS Code downloads CodeQL binaries">

7. Continue with [Selecting a CodeQL Database](#select-codeql-database)
8. Then [Test your installation](#test-your-installation)

### Troubleshooting the local installation

In case you see errors such as:
* `Failed to run query: Could not resolve library path for [..]`
* `Could not resolve module [..]` 
* `Could not resolve type [..]`

=> It is very likely that you missed cloning the git submodules (namely the ql repo). To fix this follow the [Step-by-Step](#step-by-step-1) instructions starting with step 3.

## Select CodeQL Database

1. Make sure you have the workspace `vscode-codeql-starter.code-workspace` open in VS Code.
2. Go To the CodeQL View
3. Click on "Choose Database from Archive" and select the `workshop_db.zip` file in the root of the repository.

<img src="images/select-codeql-db.png"  width="380" alt="Screenshot: Select CodeQL DB from archive">

<img src="images/codeql-db-from-path.png"  width="620" alt="Screenshot: Select CodeQL DB from path">

Now you can test your installation:

## Test your installation

### Prerequisites

Make sure that the previously chosen CodeQL database is selected in the CodeQL view. (Click on "Select" if it's not)

=> When the database is selected it should look like this (note the checkmark):

<img src="images/codeql-db-selected.png"  width="442" alt="Screenshot: CodeQL Database selected">

### Step-by-Step

1. In VS Code: go to the workspace folder: `codeql-custom-queries-cpp`
2. Create a new file `test.ql`
3. add the following content: `select "Hello World!"`
4. Save file and right click in file on "CodeQL: Run Query on Selected Database"

=>  The output should look like this:

<img src="images/test-hello-world.png"  width="620" alt="Screenshot: First CodeQL query results">
