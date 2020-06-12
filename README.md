# _Animal Shelter API_

#### _A practice application using Ruby, Gem & Pry. DATE 6/12/20_

#### By _**Chisato Murakami**_

## Description
  _An Api that give information about cats and dogs at a shelter._

* **URL** 
  _https://travel-api-rails.herokuapp.com/_

* **Method:**

  `GET` | `POST` | `DELETE` | `PUT` 

  `id=[integer]`<br>
  `place=[string]`<br>
  `content=[string]`<br>
  `author=[string]`<br>

|  Method |  URL  | Params | Response 
|---------------------------|---------|-------|-------
|**GET**|**/animals**|**N/A**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> },...]</code>
|**GET**|**/animals/:id**|**`id=[integer]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }]</code>
|**POST**|**/animals/:id**|**`kind=[string]`<br>`name=[string]`<br>`age=[integer]`<br>`breed=[string]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }]</code>
|**PUT or PATCH**|**/animals/:id**|**`kind=[string]`<br>`name=[string]`<br>`age=[integer]`<br>`breed=[string]`**|<code>{"message": "This animal has been updated successfully"}</code>
|**DELETE**|**/animals/:id**|**`id=[integer]`**|<code>{"message": "This animal has been deleted successfully"}</code>
|**GET**|**/animals/random**|**N/A**|<code>[{"id": 5,<br>"kind": "cat",<br>"name": "Poppy",<br> "age": 9,<br> "breed": "Abyssinian"<br> }]</code>
|**GET**|**/animals/random**|**N/A**|<code>[{"id": 5,<br>"kind": "cat",<br>"name": "Poppy",<br> "age": 9,<br> "breed": "Abyssinian"<br> }]</code>
|**GET**|**/animals/search**|**`kind=[string]`**|<code>[{"id": 1,<br>"kind": "cat",<br>"name": "kiwi",<br> "age": 9,<br> "breed": "american domestic shorthair"<br> }, ...]</code>


## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: kiwipom1031@gmail.com_

## Technologies Used

_Ruby, Gem, RSpec_

### Licenses
*MIT LICENSE*

Copyright (c) 2020 **Chisato Murakami**