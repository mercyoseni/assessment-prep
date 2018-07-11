## SOLID Principles

> Clean code is not written by following a set of rules. You don’t become a software craftsman by learning a list of heuristics. Professionalism and craftsmanship come from values that drive disciplines.
Robert C. Martin, Clean Code: A Handbook of Agile Software Craftsmanship

**Single Responsibility Principle:**
A function should do one thing and have a clearly defined goal, i.e. the actions assigned to an object must be consistent with a unique responsibility.

**Open-Close Principle:** This concerns the extensibility of components. Software entities (like classes, modules, functions etc.) should be open for extension but closed for modifications, i.e. such an entity can allow its behaviour to be extended without modifying its source code.

**Liskov Substitution Principle:** This concerns the possibility of extending a component through inheritance and imposes a constraint that ensures interoperability of objects within an inheritance hierarchy. It strongly suggests that inheritance should never be used when the sub-class restricts the freedom implicit in the base class, but should only be used when the sub-class adds extra detail to the concept represented by the base class i.e. Subclasses should add to a base class’s behaviour, not replace it.

**Interface Segregation Principle:** When designing the interface of an object, it should be limited to define what is strictly necessary, avoiding carrying around what isn’t used, i.e. clients should not be forced to depend on methods they do not use.

**Dependency Inversion Principle:** This concerns the dependence among the components of an application and states that:
> High-level modules should not depend on low-level modules. Both should depend on abstractions.
Abstractions should not depend upon details. Details should depend on abstractions.

This principle is as a result of strictly following **Liskov substitution** and **Open-closed** priniciples.
