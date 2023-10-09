# Unipd doc
## Install
Clone this repo in the Typst data directory, with:
```bash
data_dir="$(if [[ $(uname) = Linux ]]; then echo ${XDG_DATA_HOME:-~/.local/share}; elif [[ $(uname) = Darwin ]]; then echo '~/Library/Application Support'; fi)"
git clone https://github.com/albertolazari/unipd-typst-doc "$data_dir/typst/packages/local/unipd-doc/0.0.1"
```

On Windows use:
```
git clone https://github.com/albertolazari/unipd-typst-doc "%APPDATA%\typst\\packages\\local\\unipd-doc\\0.0.1"
```

Then use this package in your document with:
```typst
#import "@local/unipd-doc:0.0.1": *
```

## Usage
At the beginning of the document you should put this:
```typst
#show: unipd-doc(
  title:    [Your document's title],
  subtitle: [A subtitle],
  author:   [Your name],
  date:     [Some date],
)
```

It will create the title and outline, and style the document
