close all;clear all; clc;

% ------- Pruebas de escalon con T = 1ms para el equipo 9 ---------
y9_50b_1 = [84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,84,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,86,86,86,86,86,86,86,86,86,86,86,87,87,87,87,87,87,87,87,87,87,88,88,88,88,88,88,88,88,89,89,89,89,89,89,89,90,90,90,90,90,90,91,91,91,91,91,91,92,92,92,92,92,92,93,93,93,93,93,94,94,94,94,95,95,95,95,95,96,96,96,96,97,97,97,97,98,98,98,98,99,99,99,99,100,100,100,100,101,101,101,101,102,102,102,103,103,103,103,104,104,104,105,105,105,106,106,106,107,107,107,107,108,108,108,109,109,109,110,110,110,111,111,111,112,112,113,113,113,114,114,114,115,115,115,116,116,117,117,117,118,118,119,119,119,120,120,120,121,121,122,122,122,123,123,124,124,125,125,125,126,126,127,127,127,128,128,129,129,130,130,130,131,131,132,132,133,133,134,134,134,135,135,136,136,137,137,138,138,139,139,140,140,141,141,142,142,143,143,144,144,145,145,146,146,147,147,148,148,149,149,150,150,151,151,152,152,153,153,154,154,155,155,156,156,157,157,158,158,159,159,160,161,161,162,162,163,163,164,164,165,165,166,167,167,168,168,169,169,170,170,171,171,172,173,173,174,174,175,175,176,176,177,178,178,179,179,180,180,181,182,182,183,183,184,184,185,186,186,187,187,188,189,189,190,190,191,191,192,193,193,194,194,195,196,196,197,197,198,199,199,200,200,201,201,202,203,203,204,205,205,206,206,207,208,208,209,209,210,211,211,212,213,213,214,214,215,216,216,217,218,218,219,219,220,221,221,222,223,223,224,225,225,226,227,227,228,229,229,230,231,231,232,233,233,234,235,235,236,236,237,238,238,239,240,240,241,242,242,243,244,245,245,246,247,247,248,249,249,250,251,251,252,253,253,254,255,255,256,257,258,258,259,260,260,261,262,262,263,264,264,265,266,266,267,268,269,269,270,271,271,272,273,273,274,275,276,276,277,278,278,279,280,281,281,282,283,283,284,285,285,286,287,288,288,289,290,290,291,292,293,293,294,295,295,296,297,298,298,299,300,301,301];
y9_50b_2 = [84,84,84,84,84,84,84,84,84,84,84,84,84,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,86,86,86,86,86,86,86,86,86,86,87,87,87,87,87,87,87,87,87,87,88,88,88,88,88,88,88,89,89,89,89,89,89,89,89,90,90,90,90,90,90,91,91,91,91,91,91,92,92,92,92,92,93,93,93,93,93,93,94,94,94,94,95,95,95,95,95,96,96,96,96,97,97,97,97,97,98,98,98,99,99,99,99,99,100,100,100,101,101,101,101,102,102,102,102,103,103,103,104,104,104,104,105,105,105,106,106,106,106,107,107,107,108,108,108,109,109,109,110,110,110,111,111,111,112,112,112,113,113,113,114,114,114,115,115,115,116,116,117,117,117,118,118,119,119,119,120,120,120,121,121,122,122,122,123,123,124,124,124,125,125,126,126,126,127,127,128,128,129,129,129,130,130,131,131,131,132,132,133,133,134,134,135,135,135,136,136,137,137,138,138,139,139,140,140,141,141,142,142,143,143,144,144,144,145,145,146,146,147,147,148,148,149,149,150,150,151,151,152,152,153,153,154,154,155,155,156,157,157,158,158,159,159,160,160,161,161,162,162,163,163,164,165,165,166,166,167,167,168,168,169,169,170,171,171,172,172,173,173,174,174,175,175,176,177,177,178,178,179,179,180,180,181,182,182,183,183,184,184,185,186,186,187,187,188,188,189,190,190,191,191,192,193,193,194,194,195,196,196,197,197,198,198,199,200,200,201,201,202,203,203,204,204,205,206,206,207,208,208,209,209,210,211,211,212,213,213,214,214,215,216,216,217,218,218,219,219,220,221,221,222,223,223,224,225,225,226,227,227,228,229,229,230,231,231,232,233,233,234,235,235,236,237,237,238,239,239,240,241,242,242,243,244,244,245,246,246,247,248,248,249,250,251,251,252,253,253,254,255,256,256,257,258,258,259,260,261,261,262,263,263,264,265,265,266,267,268,268,269,270,271,271,272,273,273,274,275,276,276,277,278,279,279,280,281,282,282,283,284,284,285,286,287,287,288,289,290,290,291,292,293,293,294,295,296,296,297,298,299,299,300,301,302,302,303,304,305,305,306,307,308,308,309,310,311,312,312,313,314,315,315];

y9_100b_1 = [85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,86,86,86,86,86,86,86,86,86,86,86,87,87,87,87,87,87,87,87,87,87,88,88,88,88,88,88,88,89,89,89,89,89,89,89,90,90,90,90,90,91,91,91,91,91,91,92,92,92,92,93,93,93,93,93,94,94,94,94,95,95,95,95,96,96,96,96,97,97,97,97,98,98,98,99,99,99,99,100,100,100,101,101,101,102,102,102,103,103,103,104,104,104,105,105,105,106,106,106,107,107,107,108,108,108,109,109,110,110,110,111,111,111,112,112,113,113,113,114,114,115,115,115,116,116,117,117,118,118,118,119,119,120,120,121,121,122,122,123,123,123,124,124,125,125,126,126,127,127,128,128,129,129,130,130,131,131,132,132,133,133,134,134,135,135,136,136,137,137,138,138,139,140,140,141,141,142,142,143,143,144,144,145,146,146,147,147,148,148,149,150,150,151,151,152,152,153,154,154,155,155,156,157,157,158,158,159,160,160,161,161,162,163,163,164,165,165,166,166,167,168,168,169,170,170,171,171,172,173,173,174,175,175,176,176,177,178,178,179,180,180,181,182,182,183,184,184,185,186,186,187,188,188,189,190,190,191,192,192,193,194,194,195,196,196,197,198,198,199,200,201,201,202,203,203,204,205,205,206,207,208,208,209,210,211,211,212,213,213,214,215,216,216,217,218,219,219,220,221,222,222,223,224,225,225,226,227,228,228,229,230,231,232,232,233,234,235,235,236,237,238,239,239,240,241,242,243,243,244,245,246,246,247,248,249,250,251,251,252,253,254,255,255,256,257,258,259,260,260,261,262,263,264,264,265,266,267,268,269,269,270,271,272,273,274,275,275,276,277,278,279,280,280,281,282,283,284,285,285,286,287,288,289,290,291,291,292,293,294,295,296,297,297,298,299,300,301,302,303,304,304,305,306,307,308,309,310,310,311,312,313,314,315,316,317,318,319,319,320,321,322,323,324,325,326,327,327,328,329,330,331,332,333,334,335,336,337,337,338,339,340,341,342,343,344,345,346,347,348,349,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,379,380,381];
y9_100b_2 = [77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,77,78,78,78,78,78,78,78,78,78,79,79,79,79,79,79,79,80,80,80,80,80,80,80,81,81,81,81,81,81,82,82,82,82,82,83,83,83,83,83,84,84,84,84,85,85,85,85,85,86,86,86,86,87,87,87,88,88,88,88,89,89,89,89,90,90,90,91,91,91,92,92,92,92,93,93,93,94,94,94,95,95,95,96,96,96,97,97,98,98,98,99,99,99,100,100,100,101,101,102,102,102,103,103,104,104,104,105,105,106,106,106,107,107,108,108,108,109,109,110,110,111,111,112,112,112,113,113,114,114,115,115,116,116,117,117,118,118,119,119,120,120,121,121,122,122,123,123,124,124,125,125,126,126,127,127,128,128,129,129,130,130,131,132,132,133,133,134,134,135,135,136,137,137,138,138,139,139,140,141,141,142,142,143,144,144,145,145,146,147,147,148,148,149,150,150,151,151,152,153,153,154,154,155,156,156,157,158,158,159,160,160,161,161,162,163,163,164,165,165,166,167,167,168,169,169,170,171,171,172,173,173,174,175,175,176,177,177,178,179,179,180,181,181,182,183,183,184,185,186,186,187,188,188,189,190,191,191,192,193,193,194,195,195,196,197,198,198,199,200,200,201,202,203,203,204,205,206,206,207,208,209,209,210,211,212,212,213,214,215,215,216,217,218,218,219,220,221,222,222,223,224,225,225,226,227,228,229,229,230,231,232,233,233,234,235,236,237,237,238,239,240,241,242,242,243,244,245,246,246,247,248,249,250,251,251,252,253,254,255,256,256,257,258,259,260,261,262,262,263,264,265,266,267,267,268,269,270,271,272,273,273,274,275,276,277,278,279,280,280,281,282,283,284,285,286,286,287,288,289,290,291,292,293,293,294,295,296,297,298,299,300,300,301,302,303,304,305,306,307,308,308,309,310,311,312,313,314,315,316,317,318,318,319,320,321,322,323,324,325,326,327,328,328,329,330,331,332,333,334,335,336,337,338,339,340,341,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381];

y9_200s_1 = [79,79,79,79,79,78,78,78,78,78,78,77,77,77,77,76,76,76,76,75,75,75,74,74,74,73,73,73,72,72,72,72,71,71,71,70,70,70,69,69,69,68,68,68,67,67,67,66,66,66,65,65,64,64,64,63,63,63,62,62,62,61,61,60,60,60,59,59,58,58,58,57,57,56,56,55,55,55,54,54,53,53,52,52,52,51,51,50,50,49,49,48,48,47,47,47,46,46,45,45,44,44,43,43,43,42,42,41,41,40,40,40,39,39,38,38,38,37,37,36,36,35,35,35,34,34,33,33,32,32,32,31,31,30,30,30,29,29,28,28,27,27,27,26,26,25,25,24,24,23,23,23,22,22,21,21,20,20,19,19,19,18,18,17,17,16,16,15,15,14,14,14,13,13,12,12,11,11,10,10,10,9,9,8,8,7,7,6,6,6,5,5,4,4,3,3,3,2,2,1,1,0,0,0,-1,-1,-2,-2,-2,-3,-3,-4,-4,-5,-5,-6,-6,-6,-7,-7,-8,-8,-9,-9,-10,-10,-10,-11,-11,-12,-12,-13,-13,-14,-14,-15,-15,-16,-16,-16,-17,-17,-18,-18,-19,-19,-20,-20,-21,-21,-21,-22,-22,-23,-23,-24,-24,-25,-25,-25,-26,-26,-27,-27,-28,-28,-29,-29,-30,-30,-30,-31,-31,-32,-32,-33,-33,-34,-34,-35,-35,-36,-36,-36,-37,-37,-38,-38,-39,-39,-40,-40,-41,-41,-41,-42,-42,-43,-43,-44,-44,-45,-45,-46,-46,-47,-47,-47,-48,-48,-49,-49,-50,-50,-51,-51,-52,-52,-53,-53,-54,-54,-54,-55,-55,-56,-56,-57,-57,-58,-58,-59,-59,-60,-60,-60,-61,-61,-62,-62,-63,-63,-64,-64,-65,-65,-65,-66,-66,-67,-67,-68,-68,-69,-69,-70,-70,-70,-71,-71,-72,-72,-73,-73,-74,-74,-74,-75,-75,-76,-76,-77,-77,-78,-78,-78,-79,-79,-80,-80,-81,-81,-82,-82,-83,-83,-83,-84,-84,-85,-85,-86,-86,-87,-87,-87,-88,-88,-89,-89,-90,-90,-91,-91,-91,-92,-92,-93,-93,-94,-94,-95,-95,-95,-96,-96,-97,-97,-98,-98,-99,-99,-100,-100,-100,-101,-101,-102,-102,-103,-103,-104,-104,-104,-105,-105,-106,-106,-107,-107,-108,-108,-109,-109,-109,-110,-110,-111,-111,-112,-112,-113,-113,-113,-114,-114,-115,-115,-116,-116,-117,-117,-118,-118,-118,-119,-119,-120,-120,-121,-121,-122,-122,-123,-123,-123,-124,-124,-125,-125,-126,-126,-127,-127,-128,-128,-128,-129,-129,-130,-130,-131,-131,-132,-132,-132,-133,-133,-134,-134];
y9_200s_2 = [75,75,75,75,75,75,75,75,75,75,74,74,74,74,73,73,73,73,72,72,72,71,71,71,71,70,70,70,69,69,69,68,68,68,67,67,67,66,66,66,65,65,65,64,64,64,63,63,63,62,62,62,61,61,61,60,60,60,59,59,58,58,58,57,57,57,56,56,55,55,54,54,54,53,53,52,52,52,51,51,50,50,49,49,48,48,47,47,47,46,46,45,45,44,44,43,43,42,42,42,41,41,40,40,39,39,38,38,38,37,37,36,36,35,35,35,34,34,33,33,32,32,32,31,31,30,30,29,29,29,28,28,27,27,26,26,25,25,25,24,24,23,23,22,22,21,21,21,20,20,19,19,18,18,17,17,16,16,15,15,15,14,14,13,13,12,12,11,11,10,10,9,9,8,8,7,7,7,6,6,5,5,4,4,3,3,2,2,2,1,1,0,0,-1,-1,-2,-2,-3,-3,-3,-4,-4,-5,-5,-6,-6,-7,-7,-7,-8,-8,-9,-9,-10,-10,-11,-11,-12,-12,-12,-13,-13,-14,-14,-15,-15,-16,-16,-17,-17,-18,-18,-19,-19,-19,-20,-20,-21,-21,-22,-22,-23,-23,-24,-24,-25,-25,-26,-26,-26,-27,-27,-28,-28,-29,-29,-30,-30,-31,-31,-31,-32,-32,-33,-33,-34,-34,-35,-35,-36,-36,-37,-37,-38,-38,-38,-39,-39,-40,-40,-41,-41,-42,-42,-43,-43,-44,-44,-45,-45,-45,-46,-46,-47,-47,-48,-48,-49,-49,-50,-50,-51,-51,-51,-52,-52,-53,-53,-54,-54,-55,-55,-56,-56,-57,-57,-57,-58,-58,-59,-59,-60,-60,-61,-61,-62,-62,-63,-63,-64,-64,-65,-65,-65,-66,-66,-67,-67,-68,-68,-69,-69,-70,-70,-70,-71,-71,-72,-72,-73,-73,-74,-74,-74,-75,-75,-76,-76,-77,-77,-78,-78,-78,-79,-79,-80,-80,-81,-81,-81,-82,-82,-83,-83,-84,-84,-85,-85,-85,-86,-86,-87,-87,-88,-88,-88,-89,-89,-90,-90,-91,-91,-91,-92,-92,-93,-93,-94,-94,-95,-95,-95,-96,-96,-97,-97,-98,-98,-98,-99,-99,-100,-100,-101,-101,-101,-102,-102,-103,-103,-104,-104,-105,-105,-105,-106,-106,-107,-107,-108,-108,-109,-109,-109,-110,-110,-111,-111,-112,-112,-112,-113,-113,-114,-114,-115,-115,-115,-116,-116,-117,-117,-118,-118,-119,-119,-119,-120,-120,-121,-121,-122,-122,-123,-123,-123,-124,-124,-125,-125,-126,-126,-127,-127,-127,-128,-128,-129,-129,-130,-130,-131,-131,-131,-132,-132,-133,-133,-134,-134,-134,-135,-135,-136,-136,-137,-137,-137,-138,-138];

%y9_250s_1 = [75,75,75,75,75,75,75,75,75,75,76,76,76,76,76,76,76,76,76,76,76,76,76,77,77,77,77,77,77,77,77,77,78,78,78,78,78,78,78,78,79,79,79,79,79,79,80,80,80,80,80,80,81,81,81,81,81,82,82,82,82,83,83,83,83,83,84,84,84,84,85,85,85,85,86,86,86,86,87,87,87,87,88,88,88,89,89,89,89,90,90,90,91,91,91,92,92,92,93,93,93,94,94,94,95,95,95,96,96,96,97,97,97,98,98,99,99,99,100,100,100,101,101,102,102,102,103,103,104,104,104,105,105,106,106,106,107,107,108,108,109,109,109,110,110,111,111,112,112,113,113,114,114,114,115,115,116,116,117,117,118,118,119,119,120,120,121,121,122,122,123,123,124,124,125,125,126,126,127,128,128,129,129,130,130,131,131,132,132,133,133,134,135,135,136,136,137,137,138,139,139,140,140,141,141,142,143,143,144,144,145,146,146,147,147,148,149,149,150,150,151,152,152,153,153,154,155,155,156,157,157,158,158,159,160,160,161,162,162,163,164,164,165,166,166,167,168,168,169,170,170,171,172,172,173,174,174,175,176,176,177,178,178,179,180,180,181,182,182,183,184,184,185,186,187,187,188,189,189,190,191,191,192,193,194,194,195,196,196,197,198,199,199,200,201,201,202,203,204,204,205,206,207,207,208,209,210,210,211,212,213,213,214,215,216,216,217,218,219,219,220,221,222,223,223,224,225,226,226,227,228,229,230,230,231,232,233,234,234,235,236,237,238,238,239,240,241,242,243,243,244,245,246,247,247,248,249,250,251,252,252,253,254,255,256,257,257,258,259,260,261,262,262,263,264,265,266,267,267,268,269,270,271,272,273,273,274,275,276,277,278,279,279,280,281,282,283,284,285,285,286,287,288,289,290,291,291,292,293,294,295,296,297,298,299,299,300,301,302,303,304,305,306,307,307,308,309,310,311,312,313,314,315,315,316,317,318,319,320,321,322,323,324,325,326,326,327,328,329,330,331,332,333,334,335,336,337,338,339,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,374,375,376,377];
%y9_250s_2 = [89,89,89,89,89,89,89,89,89,89,89,89,89,89,89,89,89,90,90,90,90,90,90,90,90,90,90,90,91,91,91,91,91,91,91,91,91,92,92,92,92,92,92,92,93,93,93,93,93,93,94,94,94,94,94,95,95,95,95,95,96,96,96,96,96,97,97,97,97,98,98,98,98,99,99,99,99,100,100,100,100,101,101,101,101,102,102,102,103,103,103,104,104,104,104,105,105,105,106,106,106,107,107,107,108,108,108,109,109,109,110,110,111,111,111,112,112,112,113,113,114,114,114,115,115,115,116,116,117,117,118,118,118,119,119,120,120,121,121,121,122,122,123,123,124,124,125,125,125,126,126,127,127,128,128,129,129,130,130,131,131,132,132,133,133,134,134,135,135,136,136,137,137,138,138,139,139,140,140,141,141,142,142,143,144,144,145,145,146,146,147,147,148,149,149,150,150,151,151,152,152,153,154,154,155,155,156,157,157,158,158,159,159,160,161,161,162,163,163,164,164,165,166,166,167,168,168,169,169,170,171,171,172,172,173,174,174,175,176,176,177,177,178,179,179,180,181,181,182,183,183,184,185,185,186,187,187,188,189,189,190,191,191,192,193,193,194,195,195,196,197,198,198,199,200,200,201,202,202,203,204,204,205,206,207,207,208,209,209,210,211,212,212,213,214,215,215,216,217,217,218,219,220,220,221,222,223,223,224,225,226,226,227,228,229,229,230,231,232,233,233,234,235,236,237,237,238,239,240,240,241,242,243,244,244,245,246,247,248,248,249,250,251,252,252,253,254,255,256,256,257,258,259,260,261,261,262,263,264,265,265,266,267,268,269,270,270,271,272,273,274,275,275,276,277,278,279,280,281,281,282,283,284,285,286,286,287,288,289,290,291,291,292,293,294,295,296,297,298,298,299,300,301,302,303,304,305,305,306,307,308,309,310,311,312,312,313,314,315,316,317,318,319,320,320,321,322,323,324,325,326,327,328,329,330,330,331,332,333,334,335,336,337,338,339,340,341,341,342,343,344,345,346,347,348,349,350,351,352,353,354,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391];

y9_300s_1 = [103,103,103,103,103,102,102,101,101,100,99,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,80,79,78,77,76,74,73,72,71,69,68,67,65,64,63,61,60,58,57,56,54,53,51,50,48,47,45,43,42,40,39,37,36,34,32,31,29,27,26,24,22,21,19,17,16,14,12,10,9,7,5,3,2,0,-2,-4,-5,-7,-9,-11,-13,-14,-16,-18,-20,-22,-24,-25,-27,-29,-31,-33,-35,-36,-38,-40,-42,-44,-45,-47,-49,-51,-53,-54,-56,-58,-60,-61,-63,-65,-67,-68,-70,-72,-73,-75,-77,-79,-80,-82,-84,-86,-87,-89,-91,-92,-94,-96,-98,-99,-101,-103,-105,-106,-108,-110,-112,-114,-115,-117,-119,-121,-123,-124,-126,-128,-130,-132,-134,-135,-137,-139,-141,-142,-144,-146,-148,-150,-152,-153,-155,-157,-159,-161,-162,-164,-166,-168,-170,-172,-173,-175,-177,-179,-181,-182,-184,-186,-188,-190,-191,-193,-195,-197,-199,-201,-202,-204,-206,-208,-210,-211,-213,-215,-217,-219,-220,-222,-224,-226,-227,-229,-231,-233,-234,-236,-238,-240,-242,-243,-245,-247,-249,-250,-252,-254,-256,-257,-259,-261,-263,-265,-266,-268,-270,-272,-274,-275,-277,-279,-281,-283,-284,-286,-288,-290,-292,-294,-295,-297,-299,-301,-303,-305,-306,-308,-310,-312,-314,-316,-317,-319,-321,-323,-325,-326,-328,-330,-332,-334,-336,-337,-339,-341,-343,-345,-346,-348,-350,-352,-354,-356,-357,-359,-361,-363,-364,-366,-368,-370,-372,-374,-375,-377,-379,-381,-383,-384,-386,-388,-390,-392,-393,-395,-397,-399,-401,-402,-404,-406,-408,-409,-411,-413,-415,-417,-419,-420,-422,-424,-426,-428,-429,-431,-433,-435,-437,-438,-440,-442,-444,-446,-448,-449,-451,-453,-455,-457,-458,-460,-462,-464,-466,-468,-469,-471,-473,-475,-477,-478,-480,-482,-484,-486,-488,-489,-491,-493,-495,-496,-498,-500,-502,-504,-506,-507,-509,-511,-513,-515,-516,-518,-520,-522,-524,-526,-527,-529,-531,-533,-535,-536,-538,-540,-542,-544,-546,-547,-549,-551,-553,-555,-556,-558,-560,-562,-564,-565,-567,-569,-571,-573,-575,-576,-578,-580,-582,-584,-586,-587,-589,-591,-593,-595,-597,-598,-600,-602,-604,-606,-607,-609,-611,-613,-615,-617,-618,-620,-622,-624,-626,-627,-629,-631,-633,-635,-637,-638,-640,-642,-644,-646,-647,-649,-651,-653,-655,-656,-658,-660,-662,-664,-665,-667,-669,-671,-673,-674,-676,-678,-680,-682,-684,-685,-687,-689,-691,-693,-694,-696,-698,-700,-702,-704,-705,-707,-709,-711,-713,-715,-716,-718,-720,-722,-724,-726,-727,-729,-731,-733,-735,-736,-738,-740,-742,-744,-746,-747,-749,-751,-753];
y9_300s_2 = [83,83,83,83,83,82,82,81,81,80,79,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,60,59,58,57,56,54,53,52,50,49,48,46,45,44,42,41,40,38,37,35,34,32,31,29,28,26,25,23,22,20,19,17,16,14,12,11,9,8,6,4,3,1,-1,-2,-4,-6,-7,-9,-11,-13,-14,-16,-18,-20,-21,-23,-25,-27,-29,-30,-32,-34,-36,-38,-39,-41,-43,-45,-47,-49,-50,-52,-54,-56,-58,-60,-61,-63,-65,-67,-69,-70,-72,-74,-76,-77,-79,-81,-83,-84,-86,-88,-90,-91,-93,-95,-96,-98,-100,-101,-103,-105,-107,-108,-110,-112,-114,-115,-117,-119,-121,-122,-124,-126,-128,-130,-131,-133,-135,-137,-138,-140,-142,-144,-146,-147,-149,-151,-153,-155,-156,-158,-160,-162,-164,-165,-167,-169,-171,-173,-174,-176,-178,-180,-182,-183,-185,-187,-189,-191,-193,-194,-196,-198,-200,-202,-204,-205,-207,-209,-211,-213,-214,-216,-218,-220,-222,-224,-225,-227,-229,-231,-232,-234,-236,-238,-240,-241,-243,-245,-247,-248,-250,-252,-254,-256,-257,-259,-261,-263,-264,-266,-268,-270,-271,-273,-275,-277,-279,-280,-282,-284,-286,-288,-289,-291,-293,-295,-297,-299,-300,-302,-304,-306,-308,-310,-311,-313,-315,-317,-319,-320,-322,-324,-326,-328,-330,-331,-333,-335,-337,-339,-340,-342,-344,-346,-348,-350,-351,-353,-355,-357,-359,-360,-362,-364,-366,-368,-370,-371,-373,-375,-377,-379,-380,-382,-384,-386,-388,-389,-391,-393,-395,-397,-398,-400,-402,-404,-406,-407,-409,-411,-413,-415,-416,-418,-420,-422,-424,-425,-427,-429,-431,-433,-434,-436,-438,-440,-442,-443,-445,-447,-449,-451,-452,-454,-456,-458,-460,-462,-463,-465,-467,-469,-471,-472,-474,-476,-478,-480,-482,-483,-485,-487,-489,-491,-492,-494,-496,-498,-500,-502,-503,-505,-507,-509,-511,-512,-514,-516,-518,-520,-522,-523,-525,-527,-529,-531,-532,-534,-536,-538,-540,-542,-543,-545,-547,-549,-551,-552,-554,-556,-558,-560,-561,-563,-565,-567,-569,-571,-572,-574,-576,-578,-580,-581,-583,-585,-587,-589,-591,-592,-594,-596,-598,-600,-601,-603,-605,-607,-609,-611,-612,-614,-616,-618,-620,-622,-623,-625,-627,-629,-631,-632,-634,-636,-638,-640,-641,-643,-645,-647,-649,-650,-652,-654,-656,-658,-660,-661,-663,-665,-667,-668,-670,-672,-674,-676,-678,-679,-681,-683,-685,-687,-688,-690,-692,-694,-696,-698,-699,-701,-703,-705,-707,-709,-710,-712,-714,-716,-718,-719,-721,-723,-725,-727,-729,-730,-732,-734,-736,-738,-739,-741,-743,-745,-747,-748,-750,-752,-754,-756,-757,-759,-761,-763,-765,-766,-768,-770,-772];

y = y9_50b_1;
t = (0:length(y)-1);

figure(1); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
% plot(t,50*100/300,'k', 'LineWidth',2);
plot(t,y9_50b_1,'r', 'LineWidth',2);
plot(t,y9_100b_1,'b', 'LineWidth',2);
hold off;
title('Respuesta al escalon en bajada','FontSize',15,'FontWeight','bold');
xlabel('Tiempo [ms]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas de encoder','FontSize',12,'FontWeight','bold');
legend('Respuesta para PWM de 15%','Respuesta para PWM de 33%');
set(gcf, 'Position', [100, 100, 960,570]);

figure(2); hold all;
grid on;
set(gca,'color',[207/255, 231/255, 245/255]);
% plot(t,50*100/300,'k', 'LineWidth',2);
plot(t,y9_200s_1,'r', 'LineWidth',2);
plot(t,y9_300s_2,'b', 'LineWidth',2);
hold off;
title('Respuesta al escalon en subida','FontSize',15,'FontWeight','bold');
xlabel('Tiempo [ms]','FontSize',12,'FontWeight','bold');
ylabel('Cuentas de encoder','FontSize',12,'FontWeight','bold');
legend('Respuesta para PWM de 66%','Respuesta para PWM de 100%');
set(gcf, 'Position', [150, 150, 960,570]);

