# more messages
postOffice := Object clone

postOffice packageSender := method(call sender)
postOffice println

mailer := Object clone

mailer deliver := method(postOffice packageSender)
mailer println

mailer deliver println

postOffice messageTarget := method(call target)

mailer deliver := method(
  postOffice packageSender
  postOffice messageTarget
)

mailer deliver println

# unless with messages

princessButtercup := Object clone

westly := Object clone
westly trueLove := true

unless := method(
	(call sender doMessage(call message argAt(0))) ifFalse(
	call sender doMessage(call message argAt(1))) ifTrue(
	call sender doMessage(call message argAt(2)))
)

unless(1 == 2, write("One is not two\n"), write("one is two\n"))

westly isItTrueLove := method (
	princessButtercup unless(trueLove, "It is false" println),
	("It is true" println)
)

westly isItTrueLove
