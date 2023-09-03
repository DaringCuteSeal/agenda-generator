# agenda-generator
Cool everyday agenda generator for shell script nerd secretaries (primarily for PENABURians?).

*Context: my school has a system where somebody could be a secretary in a class and they're gonna do the kind of job that requires writing/typing*

🌟 Interactive and intuitive prompts

🌟 Greater readability with emoticons

🌟 What$app Styling

🌟 Modular (to some extent)

🌟 Persistent storage support

🌟 Smart stderr-only prompting for piping


Example (translateed):
```
🗓️ *Monday, 04 September 2023*

🕡 School starts at 06:45 - 13:00 
👕 Wear nothing on

📚 *Subjects*
1) Civics
2) English
3) Math
4) Mandarin

📔 *HWs* (https://gg.gg/pr-tugas-9d-2023)
1) *Math*: Exercise from page 1-100 *(🗓️ tenggat tomorrow)*
2) *Physics*: Moodle assignment *(🗓️ tenggat yesterday, damn it)*

📄 *Exams*
1) *Math Exam*: Quadratic functions

🖊️ *Notes*
• Bring your Bible (if you need to store it on the closet)
1) Bring your school rule agreement letter!

📱 *Phonekeeping Picket*
• Person 1
• Person 2

• Morning devotion: *Person 1* dan *Person 2*
• Closing prayer: *Person 3*

---

*🗒 Exam schedule and events*: https://gg.gg/9d-jadwalkeg-2023
```


# Extra Functionalities

- Override date: `DATE_OVERRIDE="wednesday" generate_agenda`
- Only print out the subjects for a day: `MAPELS_ONLY=1 generate_agenda`
- Don't prompt: `generate_agenda preview` or `generate_agenda <<< ""`

(I really want to make an Android/iOS version for this app for future secretaries 😁)

# Warning
- If you can read these stuff but found the script to be very quirky, *you don't need this script*.
- Many hardcoded paths, names, and data (this is for my personal use)—can still be changed by editing the script directly. Data examples can be found under [data/](data/)
- I don't care about the cleanliness of this script. If it works, it works.
