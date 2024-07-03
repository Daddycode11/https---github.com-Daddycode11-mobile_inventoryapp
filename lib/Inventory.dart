class InventoryItem {
    String id;
    String name;
    String description;
    bool isBorrowed;
  
    InventoryItem({
      required this.id,
      required this.name,
      required this.description,
      this.isBorrowed = false,
    });
  
    // Convert a InventoryItem into a Map. The keys must correspond to the names of the fields in Firestore.
    Map<String, dynamic> toMap() {
      return {
        'id': id,
        'name': name,
        'description': description,
        'isBorrowed': isBorrowed,
      };
    }
  
    // Create a InventoryItem from a Map. This is useful when retrieving data from Firestore.
    factory InventoryItem.fromMap(Map<String, dynamic> map) {
      return InventoryItem(
        id: map['id'],
        name: map['name'],
        description: map['description'],
        isBorrowed: map['isBorrowed'] ?? false,
      );
    }
  }
  