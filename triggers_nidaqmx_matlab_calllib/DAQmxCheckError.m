function [errstr, exterrstr] = DAQmxCheckError(lib, inerr)
% function DAQmxCheckError(lib,err)
% 
% read error code 
%	zero means no error - does nothing
%	nonzero - find out error string and generate error
% 
% inputs:
%	lib = .dll or alias (ex. 'myni')
%	err = DAQmx error
% 
% written by Nathan Tomlin (nathan.a.tomlin@gmail.com)
% v0 - 1004

if inerr ~= 0 
	% find out how long the error string is
	[numerr, b] = calllib(lib,'DAQmxGetErrorString', inerr,'',0);

	% get error string	
	errstr = char(1:numerr);	% have to pass dummy string of correct length
	[err, errstr] = calllib(lib,'DAQmxGetErrorString', inerr, errstr, numerr);
    
    % get extended error info: int32 DAQmxGetExtendedErrorInfo (char errorString[], uInt32 bufferSize);
    [numerr, b] = calllib(lib,'DAQmxGetExtendedErrorInfo', libpointer(), 0);
    exterrstr = char(1:numerr);	% have to pass dummy string of correct length
	[err, exterrstr] = calllib(lib,'DAQmxGetExtendedErrorInfo', exterrstr, numerr);
    
	% matlab error
	error(['DAQmx error ' num2str(numerr) ': ' exterrstr])
end
end
