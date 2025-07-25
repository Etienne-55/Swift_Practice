var thirdCondition: Int = 0


repeat {
    print("Terminal command list")
    print("-------Nvim-------")
    print("1->Navigation commands")
    print("2->Deleting commands")
    print("3->Inserting commands")
    print("4->Terminal commands")
    print("5->Finish")
    print(":", terminator: " ")
    if let userInput = readLine(), let option = Int(userInput) {
    thirdCondition = option

    switch thirdCondition {
    case 1:
            navigationNvim()
    case 2:
            deletingNvim()
    case 4:
            terminalCommands()
    default:
        print("Invalid option!!")
        }
    }
} while thirdCondition != 5


func navigationNvim() {
    print("W --> Go to next word start.")
    print("d --> Go to previous word start.")
    print("e --> Go to the end of the next word")
}

func deletingNvim() {
    print("dw --> Delete from cursor to the word start")
    print("db --> Delete from cursor to the word end")
    print("di + ([{ --> Delete text inside brackets")
    print("daw --> Delete an entire word")
}

func terminalCommands() {
    print("tree --> Show folder structure on the terminal")    
    print("bat --> Show the content of a file on the terminal")
    print("InspectTree --> Show the tree structure of a file using treesitter")
    print("Space + ee --> File explorer when using nvim")
    print("Space + ff --> Fuzzy finder when using nvim")
    print("Space + fs --> Find a string on the folder when using nvim")
    print("yazi --> File explorer")
}
