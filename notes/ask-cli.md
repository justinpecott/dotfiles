```bash
# Get Model
ask api get-model -s amzn1.ask.skill.e6ee73f3-f4cc-48a1-829f-c6a6e7fe865a -l en-US > models/en-US.json

# Update Model
ask api update-model -s amzn1.ask.skill.e6ee73f3-f4cc-48a1-829f-c6a6e7fe865a -f models/en-US.json -l en-US

# Get Skill
ask api get-skill -s amzn1.ask.skill.e6ee73f3-f4cc-48a1-829f-c6a6e7fe865a

# Update Skill
ask api update-skill -s amzn1.ask.skill.e6ee73f3-f4cc-48a1-829f-c6a6e7fe865a -f skill.json

# Get Lambda
ask lambda download -f justinpecott_alexa_base -d lambda/custom

# Update Lambda
ask lambda upload -f justinpecott_alexa_base -s lambda/custom

# Update Operation Status
ask api get-skill-status -s amzn1.ask.skill.e6ee73f3-f4cc-48a1-829f-c6a6e7fe865a

# Intent Request History
ask api intent-requests-history --skill-id <skill-id>

# Example Phrase Validation
ask validate -s my-skill-id
```