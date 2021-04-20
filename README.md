# Project Details:

### Step 1.

1. Create a single screen app with:
- label
- “Send a message” button
2. Once the app is launched, generate the App State and set it to the label.
- Change a state to a random value every 5 seconds
- Initial value is “unknown”
3. App State represents one of the following values:
- unknown
- connection error
- connecting
- connection established
4. When a user presses the “Send a message” button, show an alert “The message is sent” only if the current state is “connection established”.

Please pay attention to the following details:
* If applicable, please do not access a shared state directly inside a view controller (e. g.
State.shared) and take advantage of the Dependency Injection principle instead.
* Use RxSwift to generate a state.
* The new state must not be equal to the previous one.
* You are free to use any architecture/approach of your choice.

### Step 2.

Implement an operation queue using RxSwift.
1. Add a button with the “Simulate a queue” title to the screen.
2. When a user presses this button, create an array of integers from 1 to 50.
3. For every value of the array, create an operation (aka sequence) that prints the value.
4. Let’s assume that printing a value takes index-seconds to execute (for 1st value - 1 sec, for the
2nd - 2 sec, etc)
a. For simplicity, you can use DispatchQueue.main.async(after:) or any other approach to
simulate the delay.
5. The next value should be printed only when the previous one is completed.
6. All values should be printed in the correct order (from 1 to 50).
