# To-Do

### keyBoard disappear

```swift
 func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
```

### table view delete item
```
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            itemArray.remove(at: indexPath.row)
            tableview.reloadData()
            UserDefaults.standard.set(itemArray, forKey: "items")
        }
    }
```

