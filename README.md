# loicmathieu/openjdk
This is simply a Centos with OpenJDK installed on it. The version of OpenJDK can be seen from the tag (currently, only 8 is provided).

It's a base container for building more complex one ...

But if you wan to use it, you can :

```
docker pull loicmathieu/openjdk
docker run -ti loicmathieu/openjdk
```

This will show you the version of openjdk ...