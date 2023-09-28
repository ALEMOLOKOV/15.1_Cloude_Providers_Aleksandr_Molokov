# 15.1_Cloude_Providers_Aleksandr_Molokov

### Задание 1. Yandex Cloud 

**Что нужно сделать**

### 1. Создать пустую VPC. Выбрать зону.

### Ответ

![VPC](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/8cb60b89-ca66-4dd4-bf67-b5a5a29f00c3)

### 2. Публичная подсеть.

 - Создать в VPC subnet с названием public, сетью 192.168.10.0/24.
 - Создать в этой подсети NAT-инстанс, присвоив ему адрес 192.168.10.254. В качестве image_id использовать fd80mrhj8fl2oe87o4e1.
 - Создать в этой публичной подсети виртуалку с публичным IP, подключиться к ней и убедиться, что есть доступ к интернету.

### Ответ

#### Подсети
![subnets](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/42a54e8e-d30c-409c-862c-25011c91161f)

#### NAT instance и ВМ 

![VM](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/e5052477-a2b9-4bc1-8d26-a6cf1745de68)

#### Проверка доступа к интернету из ВМ в подсети pablic

![2 task ](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/d7e72fd9-83b4-4533-9392-180c8eb3b5c0)

### 3. Приватная подсеть.
 - Создать в VPC subnet с названием private, сетью 192.168.20.0/24.
 - Создать route table. Добавить статический маршрут, направляющий весь исходящий трафик private сети в NAT-инстанс.
 - Создать в этой приватной подсети виртуалку с внутренним IP, подключиться к ней через виртуалку, созданную ранее, и убедиться, что есть доступ к интернету.

### Ответ

#### Подсеть private и статический маршрут

![subnets](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/6c0f2f55-6ee0-41cc-9df4-7442136c2f0c)

#### Таблица маршрутизации

![nat-instance-route](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/fff3838c-43b7-4101-838c-d7cd72f7c1d4)

#### ВМ в подсети private

![VM](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/919e7173-6808-440b-8c4d-b71f2f8f0a4c)

#### Проверка доступности к интернету из private подсети

![3 task](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/assets/109212419/1f80ec61-2f72-45aa-8f8f-567b55d14436)


### Terraform

![main.tf](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/blob/c805384a78a5a9e7ac8a1f665e32a9befa256313/main.tf)

![vars.tf](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/blob/8d6f83422d7141234f95dd5f24dbad90dfe0cba0/vars.tf)

![infrastructure.tf](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/blob/8d6f83422d7141234f95dd5f24dbad90dfe0cba0/infrastructure.tf)

![output.tf](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/blob/8d6f83422d7141234f95dd5f24dbad90dfe0cba0/output.tf)

![metadata.yml](https://github.com/ALEMOLOKOV/15.1_Cloude_Providers_Aleksandr_Molokov/blob/8d6f83422d7141234f95dd5f24dbad90dfe0cba0/metadata.yml)



