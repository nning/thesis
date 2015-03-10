@name = File.basename(File.dirname(__FILE__))

def export_name
  user = ENV['USER']
  time = Time.now.strftime('%Y%m%d')
  head = `git rev-parse --short HEAD`.chomp
  [@name, user, time, head].join('-') + '.pdf'
end

task default: :build

desc 'Build document as PDF (default)'
task build: "#@name.pdf"
 
file "#@name.pdf" => Dir['{**/*.{bib,cls,tex},images/*.pdf}'] + [:images] do
  sh "git rev-parse --short HEAD > version.tex"
  sh "texi2pdf #@name.tex"
  sh "grep Warning: #@name.log"
end

desc 'Build document as PDF with line numbers'
task :review do
  File.write 'review.tex', '\usepackage{lineno}\linenumbers'
  task('clean:all').invoke
  task(:build).invoke
  rm_f 'review.tex'
end
 
desc 'Cleanup temporary files'
task :clean do
  Dir['**/*.{acn,aux,bbl,bcf,blg,lof,log,lot,nav,out,run.xml,snm,toc}'].each do |file|
    rm_f file
  end
  sh 'cd images; make clean'
end

desc 'Cleanup everything'
task 'clean:all' => :clean do
  rm_f "#@name.pdf"
end

desc 'Open document in default PDF viewer'
task open: :build do
  sh "(xdg-open #@name.pdf || open #@name.pdf) &"
end

desc 'Build document for export and clean up'
task export: :build do
  sh "ln -f #@name.pdf #{export_name}"
  task('clean:all').invoke
end

desc 'Build and crop export document'
task 'export:crop' => :export do
  sh "pdfcrop #{export_name}"
end

desc 'Build document for printing and clean up'
task 'export:print' do
  touch '.no_color'
  task(:export).invoke
  rm_f '.no_color'
end

desc 'Generate images'
task :images do
  sh 'cd images; make'
end

desc 'Count words'
task 'count:words' do
  sh 'detex thesis.tex | wc -w'
end

desc 'Run spell-check'
task 'check:spelling' do
  sh 'hunspell -d en_US -t **/*.tex'
end
