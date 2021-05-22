function [WK,SK] = KeySchedule(key_hex)
MK = hex2dec(key_hex);
WK = WK_gen(MK);
SK = subKey(key_hex);
end
