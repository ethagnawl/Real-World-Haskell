type CustomerID = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)

data BookInfo = Book Int String [String]
  deriving (Show)

myInfo = Book 343333 "Some Title" ["Foo Bar", "Foo Buzz"]

data MagazineInfo = Magazine Int String [String]
  deriving (Show)

data BookReview = BookReview BookInfo CustomerID String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                  | CashOnDelivery
                  | Invoice CustomerID
                    deriving (Show)

bookID (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

niceBookID (Book id _ _) = id
niceBookTitle (Book _ title _) = title
niceBookAuthors (Book _ _ authors) = authors

data Customer = Customer {
  customerID :: CustomerID,
  customerName :: String,
  customerAddress :: Address
} deriving (Show)


