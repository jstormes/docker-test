# docker-test
Project to test docker setup on computer


This project is a test of the ssh-agent to docker build setup.


# Make sure ssh is set up properly and GitHub is working

To run the test, first make sure your ssh-key for GitHub is set up properly.


set up the ssh-agent on your computer

```
ssh git@github.com
```

If you get a message like this:

```
Hi jstormes! You've successfully authenticated, but GitHub does not provide shell access.
```

Your ssh key for GitHub is set up properly.

# Make sure the ssh-agent is running

Next: Make sure you have the ssh-agent running on your computer.

## To set up ssh-agent on Windows 11:

Run PowerShell as Administrator:

```
Get-Service -Name ssh-agent | Set-Service -StartupType 'Automatic'
Start-Service ssh-agent
```

## To test if the ssh-agent is running:

```
ssh-add *
ssh-add -l
```

If you get a message like this:

```
2048 SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /c/Users/jstormes/.ssh/id_rsa (RSA)
```

Your ssh-agent is running.