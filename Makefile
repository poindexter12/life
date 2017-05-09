all: resume.html resume.pdf resume.docx resume.txt

resume.html: readme.md
	pandoc --standalone --from markdown --to html -o resume.html readme.md

resume.pdf: resume.html
	wkhtmltopdf resume.html resume.pdf

resume.docx: readme.md
	pandoc --from markdown --to docx -o resume.docx readme.md

resume.txt: readme.md
	pandoc --standalone --smart --from markdown --to plain -o resume.txt readme.md

clean:
	rm -f *.html *.pdf *.docx *.txt
