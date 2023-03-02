Name VPC - fetch a VPC with tags
=========================================

A simple terraform module to fetch AWS VPC information based on given tags.
For case that VPC is not created or maintenance by same team or VPC is already there.

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
module "tagged-vpc" {
  source  = "a3linux/tagged-vpc/aws"
  version = "0.1.0"
  
  vpc_name = "myvpc"
  tags = {tag1=value1, tags2=value2}
}
````
