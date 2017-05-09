all: resume.html resume.pdf resume.docx resume.txt

resume.html: resume.md
	pandoc --standalone --from markdown --to html -o resume.html resume.md

resume.pdf: resume.html
	wkhtmltopdf resume.html resume.pdf

resume.docx: resume.md
	pandoc --from markdown --to docx -o resume.docx resume.md

resume.txt: resume.md
	pandoc --standalone --smart --from markdown --to plain -o resume.txt resume.md

clean:
	rm -f *.html *.pdf *.docx *.txt
