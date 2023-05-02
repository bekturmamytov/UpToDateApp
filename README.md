# UpToDate

UpToDate is a news app that fetches top stories using an API call and displays them in a table view with custom cells. The app allows users to select a news story and view it in SafariViewController. Additionally, the app provides a search feature for finding news stories.

## Features

- TableView: The app utilizes a table view to display news stories.
- Custom Cell: The app uses custom cells to display news story data.
- API Caller: The app fetches top stories from an API using APICaller.
- Open the News Story: The app allows users to select a news story and view it in SafariViewController.
- Search for News Story: The app provides a search feature for finding news stories.

## Implementation

The `ViewController.swift` file contains the main code for the app. It implements the `UITableViewDelegate` and `UITableViewDataSource` protocols to display news stories in a table view. The file also includes the `fetchTopStories()` function that retrieves top stories from the API and populates the table view with news story data.

The app uses `NewsTableViewCellViewModel` to display news story data in custom cells. The `NewsTableViewCell.swift` file contains the code for the custom cell.

The app uses SafariServices to open news stories in `SafariViewController`.

## Requirements

The app requires iOS 13.0 or later.

## Installation

To install the app, download the source code from GitHub and open it in Xcode. Build and run the app on a simulator or physical device.

## Credits

The app was created by Bektur Mamytov on 30/4/23.

The app uses the News API to fetch top stories.

## License

The app is licensed under the MIT license. See `LICENSE.txt` for more information.

