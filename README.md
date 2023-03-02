Name VPC - fetch a VPC with tags
=========================================

# Input and output

Input should vpc name tag as vpc_name or any other existed VPC tags with tags map as, 

```
tags = {
    TagName = TagValue
        ...
}
```

vpc_id, cidr_blocks, owner_id and all VPC tags are available from the data source.

# Usage
````
module "vpc" {
    source = "<source-to-this module>"

    vpc_name = "myvpc"
    tags = {tag1=value1, tags2=value2}
}
````
