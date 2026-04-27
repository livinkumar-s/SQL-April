# import mysql.connector

# connection=mysql.connector.connect(
#     host="localhost",
#     user="root",
#     password="12345",
#     database="conatct"
# )

# print("Database connected Successfully....!")

# cursor=connection.cursor()

# Read
# cursor.execute("SELECT * FROM allcontacts")
# print(cursor.fetchall())



# Create
# cursor.execute("INSERT INTO allcontacts (name,email,phone) VALUE (%s,%s,%s)",('Naveen','ben@gmail.com','6785765566'))
# connection.commit()
# print("Added Successfully....!")


# Update
# cursor.execute("UPDATE allcontacts SET email=%s WHERE id=%s",("naveen@gmail.com",2))
# connection.commit()
# print("Updated Successfully....!")


# Delete
# cursor.execute("DELETE FROM allcontacts WHERE id=%s",(1,))
# connection.commit()
# print("Deleted Successfully....!")


import mysql.connector

connection=mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="conatct"
)

print("Database connected Successfully....!")

cursor=connection.cursor()

def viewAllContact():
    cursor.execute("SELECT * FROM allcontacts")
    con=cursor.fetchall()
    for a,b,c,d in con:
        print(f"Name: {b}\nMail Id: {c}\nPhone: {d}")
        print("-----------------------------------")
    print()

def addNewContact():
    name=input("Enter contact name: ")
    mail=input("Enter contact mail id: ")
    phone=input("Enter contact phone number: ")
    cursor.execute("INSERT INTO allcontacts (name,email,phone) VALUE (%s,%s,%s)",(name,mail,phone))
    connection.commit()
    print("Added Successfully....!")

def updateContact():
    inp=input("Search contact here: ")
    cursor.execute("SELECT * FROM allcontacts where name like %s or email like %s or phone like %s",(f"%{inp}%",f"%{inp}%",f"%{inp}%"))
    con=cursor.fetchall()
    for a,b,c,d in con:
        print(f"Name: {b}\nMail Id: {c}\nPhone: {d}\n ContactId: {a}")
        print("-----------------------------------")
    
    selectedContactId=int(input("Enter contact Id: "))
    name=input("Enter contact name: ")
    mail=input("Enter contact mail id: ")
    phone=input("Enter contact phone number: ")
    cursor.execute("UPDATE allcontacts SET name=%s, email=%s, phone=%s WHERE id=%s",(name,mail,phone,selectedContactId))
    connection.commit()
    print("Updated Successfully....!")
    print()


while True:
    print("1--> View All Contacts\n2--> Add New Contact\n3-->Update a Contact\n4--> Delete a Contact\n0--> Exit")
    inp=int(input("Choose an option: "))

    if inp==1:
        viewAllContact()
    elif inp==2:
        addNewContact()
    elif inp==3:
        updateContact()
    elif inp==4:
        pass
    elif inp==0:
        break
    else:
        print("Enter valid Input...!")