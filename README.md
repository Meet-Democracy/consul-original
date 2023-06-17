
# Meet Democracy fork of Consul project

**NOTE** This is a **fork** of [Consul Project](https://github.com/consul/consul/).

Our sincere thanks and appreciation go out to Consul Project for the incredible work and support they provide.

![Meet Democracy logo](https://meetdemocracy.com/images/LogoMeetDemocracy.png)


# Hi, we are Meet Democracy! 👋
[https://meetdemocracy.com](https://meetdemocracy.com)

Meet democracy platform allows the participants of your community to debate and vote on legislation, budget and more. Our goal is to make community development easy. We intend to democratize community participation by making it accessible to all. We recognize the importance of having access to a democratic and trustworthy platform. Give your community citizens the freedom to express themselves.

## What's new ?

- Upgrade Font Awesome from 5.15.1 to 6.4.0 [PR #6](https://github.com/Meet-Democracy/consul-original/pull/6)

- Render budget image with brackets in its name [PR #3](https://github.com/Meet-Democracy/consul-original/pull/3)

- Fix Parser / Rubocop console error [PR #2](https://github.com/Meet-Democracy/consul-original/pull/2)

- Fix Failing Test: SDG management relations_spec [PR #1](https://github.com/Meet-Democracy/consul-original/pull/1)

## Run Locally

Clone the project

```bash
git clone https://github.com/Meet-Democracy/consul-original.git
```

Go to the project directory

```bash
cd consul-original
```

Install dependencies

```bash
bundle install

```
Configure the database and secrets

```bash
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
```

Setup the database

```bash
bin/rake db:create
bin/rake db:migrate
bin/rake db:dev_seed
```

Run the tests

```bash
bin/rake db:test:prepare
bin/rspec
```


Start the server

```bash
bin/rake s
```

## Demonstration Admin and User credentials

You can use the default admin user from the seeds file:

 **user:** admin
 **pass:** 12345678

But for some actions like voting, you will need a verified user, the seeds file also includes one:

 **user:** verified
 **pass:** 12345678
