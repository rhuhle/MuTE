function mute_write_script(method,date_gen)  
    tel = 0;
    tot= sum(method.which);
t = clock;
fid = fopen([method.gen_param.folder '/mute_analysis_' date_gen '.m'],'w+');
fprintf(fid,['%%%%this is a script generated by the MuTE gui at ' date_gen.... 
    '\n%%%%please run this script to run the analysis' '\n\n' 'dataDir = ' '''' method.gen_param.folder '/''' ';\n'... 
     'dataFileName = ' '''' method.gen_param.filename '''' ';\n'  'dataLabel = ' '''' method.gen_param.datalabel '''' ';\n'...  
     'dataExtension = ' '''' method.gen_param.ext '''' ';\n' 'resDir = [dataDir dataFileName ''_'' dataLabel ''/'']' ';\n'... 
     'if (~exist([dataDir ''resDir''],''dir''))\n  mkdir(resDir);\n  end\n' 'copyDir   = [resDir ''entropyMatrices_'' dataLabel ''/''];\n'...
     'if (~exist([resDir ''copyDir''],''dir''))\n  mkdir(copyDir);\n end\n\n%%%%defining results directories\n\n cd(dataDir)\n'...
      'resultDir           = [resDir ''results_'' dataLabel ''/''];\n' 'if (~exist([resDir ''resultDir''],''dir''))\n mkdir(resultDir);\nend\n\n%%%%get the realization\n'... 
      'listRealization = dir('''... 
    getfield(method.gen_param,'folder') '/' [getfield(method.gen_param,'filename') '*' getfield(method.gen_param,'datalabel') '*' getfield(method.gen_param,'ext')] '''); \n'...
    '\n %%%%here the analysis is done with all parameters defined in the gui. WARNING: the computation is taking place in another workspace. Please wait until (...COMPUTATION DONE!) is displayed. \n\n [output1,params1]               = parametersAndMethods(listRealization,' num2str(method.gen_param.Srate) ',' num2str(method.gen_param.points) ','...
    num2str(method.gen_param.chans) ',' num2str(method.gen_param.auto) ',' num2str(method.gen_param.hand) ',resultDir,dataDir,copyDir,' method.gen_param.ncpu ',...\n' ]);
% fprintf(fid,'\n\nfprintf(''\\n\\n''); disp(''COMPUTATION STARTED!''); fprintf(''\\n\\n'')');
% fprintf(fid,'\n\nfprintf(''\\n\\n''); disp(''********************''); fprintf(''\\n\\n'')');
% fprintf(fid,'\n\nfprintf(''\\n\\n''); disp(''WARNING: the computation is taking place in another workspace. Please wait until (...COMPUTATION DONE!) is displayed.''); fprintf(''\\n\\n'')');
% fprintf(fid,'\n\nfprintf(''\\n\\n''); disp(''********************''); fprintf(''\\n\\n'')');
%%%%binue fprintf
if method.which(1) == 1;
    tel = tel+1;
    field_names = fieldnames(method.binue);
  fprintf(fid,['''binue'',' getfield(method.binue,field_names{1}) ',' getfield(method.binue,field_names{2}) ',' getfield(method.binue,field_names{3})...
      ',' getfield(method.binue,field_names{4})...
    ',''' getfield(method.binue,field_names{5}) ''','  getfield(method.binue,field_names{6}) ',' getfield(method.binue,field_names{7}) ','...
    getfield(method.binue,field_names{8}) ',' getfield(method.binue,field_names{9}) ',' getfield(method.binue,field_names{10}) ','...
    getfield(method.binue,field_names{11}) ',' getfield(method.binue,field_names{12}) ',' getfield(method.binue,field_names{13}) ',' getfield(method.binue,field_names{14})...
     ',' getfield(method.binue,field_names{15})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end
%%%%binnue fprintf
if method.which(2) == 1
    tel = tel+1;
    field_names = fieldnames(method.binnue);
  fprintf(fid, ['''binnue'',' getfield(method.binnue,field_names{1}) ',' getfield(method.binnue,field_names{2}) ',' getfield(method.binnue,field_names{3})...
         ',' getfield(method.binnue,field_names{4})...
    ',''' getfield(method.binnue,field_names{5}) ''','  getfield(method.binnue,field_names{6}) ',' getfield(method.binnue,field_names{7}) ','...
    getfield(method.binnue,field_names{8}) ',' getfield(method.binnue,field_names{9}) ',' getfield(method.binnue,field_names{10}) ','...
    getfield(method.binnue,field_names{11}) ',' getfield(method.binnue,field_names{12}) ',' getfield(method.binnue,field_names{13}) ','...
    getfield(method.binnue,field_names{14})] ) ;
if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end

%%%%%linue fprinf

if method.which(3) == 1;
    tel = tel+1;
    field_names = fieldnames(method.linue);
  fprintf(fid,['''linue'',' getfield(method.linue,field_names{1}) ',' getfield(method.linue,field_names{2}) ',' getfield(method.linue,field_names{3})...
      ',' getfield(method.linue,field_names{4})...
    ',''' getfield(method.linue,field_names{5}) ''','  getfield(method.linue,field_names{6}) ',' getfield(method.linue,field_names{7}) ','...
    '''' getfield(method.linue,field_names{8}) '''' ',' getfield(method.linue,field_names{9}) ',' getfield(method.linue,field_names{10}) ','...
    getfield(method.linue,field_names{11}) ',' getfield(method.linue,field_names{12}) ',' getfield(method.linue,field_names{13})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end
%%%%%linnue fprinf
if method.which(4) == 1;
    tel = tel+1;
    field_names = fieldnames(method.linnue);
  fprintf(fid,['''linnue'',' getfield(method.linnue,field_names{1}) ',' getfield(method.linnue,field_names{2}) ',' getfield(method.linnue,field_names{3})...
      ',' getfield(method.linnue,field_names{4})...
    ',''' getfield(method.linnue,field_names{5}) ''','  getfield(method.linnue,field_names{6}) ',' getfield(method.linnue,field_names{7}) ','...
    getfield(method.linnue,field_names{8}) ',' getfield(method.linnue,field_names{9}) ',' getfield(method.linnue,field_names{10}) ','...
    getfield(method.linnue,field_names{11})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end

%%nnue

if method.which(5) == 1;
    tel = tel+1;
    field_names = fieldnames(method.nnue);
  fprintf(fid,['''nnue'',' getfield(method.nnue,field_names{1}) ',' getfield(method.nnue,field_names{2}) ',' getfield(method.nnue,field_names{3})...
      ',' getfield(method.nnue,field_names{4})...
    ',''' getfield(method.nnue,field_names{5}) ''','  getfield(method.nnue,field_names{6}) ',' getfield(method.nnue,field_names{7}) ','...
    '''' getfield(method.nnue,field_names{8}) '''' ',' getfield(method.nnue,field_names{9}) ',' '''' getfield(method.nnue,field_names{10}) '''' ',...\n'...
    '''' getfield(method.nnue,field_names{11}) '''' ',' getfield(method.nnue,field_names{12}) ','  getfield(method.nnue,field_names{13})  ...
    ',' getfield(method.nnue,field_names{14}) ',' getfield(method.nnue,field_names{15})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end

%%nnnue

if method.which(6) == 1;
    tel = tel+1;
    field_names = fieldnames(method.nnnue);
  fprintf(fid,['''nnnue'',' getfield(method.nnnue,field_names{1}) ',' getfield(method.nnnue,field_names{2}) ',' getfield(method.nnnue,field_names{3})...
      ',' getfield(method.nnnue,field_names{4})...
    ',''' getfield(method.nnnue,field_names{5}) ''','  getfield(method.nnnue,field_names{6}) ',' getfield(method.nnnue,field_names{7}) ','...
    '''' getfield(method.nnnue,field_names{8}) '''' ',' getfield(method.nnnue,field_names{9}) ',' getfield(method.nnnue,field_names{10}) ','...
    getfield(method.nnnue,field_names{11}) ',...\n' '''' getfield(method.nnnue,field_names{12}) '''' ',' '''' getfield(method.nnnue,field_names{13}) '''' ...
    ',' getfield(method.nnnue,field_names{14}) ',' getfield(method.nnnue,field_names{15}) ',' getfield(method.nnnue,field_names{16})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end


%%neunetue

if method.which(7) == 1;
    tel = tel+1;
    field_names = fieldnames(method.neunetue);
  fprintf(fid,['''neunetue'',' getfield(method.neunetue,field_names{1}) ',' getfield(method.neunetue,field_names{2}) ',' getfield(method.neunetue,field_names{3})...
      ',' getfield(method.neunetue,field_names{4})...
    ',' getfield(method.neunetue,field_names{5}) ',''' getfield(method.neunetue,field_names{6}) ''',' getfield(method.neunetue,field_names{7}) ','...
     getfield(method.neunetue,field_names{8})  ',{' getfield(method.neunetue,field_names{9}) '},'  getfield(method.neunetue,field_names{10})  ','...
     getfield(method.neunetue,field_names{11})  ',' getfield(method.neunetue,field_names{12}) ','  getfield(method.neunetue,field_names{13})  ...
    ',' getfield(method.neunetue,field_names{14}) ',' getfield(method.neunetue,field_names{15}) ',' getfield(method.neunetue,field_names{16})...
    ',' getfield(method.neunetue,field_names{17}) ',' getfield(method.neunetue,field_names{18}) ',' getfield(method.neunetue,field_names{19})...
    ',...\n' getfield(method.neunetue,field_names{20}) ',' getfield(method.neunetue,field_names{21}) ',' getfield(method.neunetue,field_names{22})...
    ',' getfield(method.neunetue,field_names{23}) ',' getfield(method.neunetue,field_names{24}) ',' getfield(method.neunetue,field_names{25})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end

%%neunetnue

if method.which(8) == 1;
    tel = tel+1;
    field_names = fieldnames(method.neunetnue);
  fprintf(fid,['''neunetnue'',' getfield(method.neunetnue,field_names{1}) ',' getfield(method.neunetnue,field_names{2}) ',' getfield(method.neunetnue,field_names{3})...
      ',' getfield(method.neunetnue,field_names{4})...
    ',' getfield(method.neunetnue,field_names{5}) ','  getfield(method.neunetnue,field_names{6}) ',' getfield(method.neunetnue,field_names{7}) ','''...
     getfield(method.neunetnue,field_names{8})  ''',' getfield(method.neunetnue,field_names{9}) ','  getfield(method.neunetnue,field_names{10})  ','...
    '{' getfield(method.neunetnue,field_names{11}) '}' ',' getfield(method.neunetnue,field_names{12}) ','  getfield(method.neunetnue,field_names{13})  ...
    ',' getfield(method.neunetnue,field_names{14}) ',' getfield(method.neunetnue,field_names{15}) ',' getfield(method.neunetnue,field_names{16})...
    ',' getfield(method.neunetnue,field_names{17}) ',' getfield(method.neunetnue,field_names{18}) ',' getfield(method.neunetnue,field_names{19})...
    ',...\n' getfield(method.neunetnue,field_names{20}) ',' getfield(method.neunetnue,field_names{21}) ',' getfield(method.neunetnue,field_names{22})...
    ',' getfield(method.neunetnue,field_names{23}) ',' getfield(method.neunetnue,field_names{24}) ',' getfield(method.neunetnue,field_names{25})])  ;
 if tel == tot;
    fprintf(fid,');');
else
    fprintf(fid,',...\n');
end
end



 fprintf(fid,'\n\nfprintf(''\\n\\n''); disp(''...COMPUTATION DONE!''); fprintf(''\\n\\n'');close all');
fclose('all');
end