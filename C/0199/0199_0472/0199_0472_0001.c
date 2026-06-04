#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned char v5 (unsigned char, signed int, signed short, unsigned short);
unsigned char (*v6) (unsigned char, signed int, signed short, unsigned short) = v5;
extern unsigned short v9 (signed short, signed char, signed char, unsigned char);
extern unsigned short (*v10) (signed short, signed char, signed char, unsigned char);
extern signed int v11 (unsigned int);
extern signed int (*v12) (unsigned int);
extern unsigned char v13 (unsigned short, signed char, unsigned int, unsigned char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned int, unsigned char);
unsigned short v15 (signed short, unsigned short);
unsigned short (*v16) (signed short, unsigned short) = v15;
extern signed short v17 (signed int, signed char, unsigned char, unsigned int);
extern signed short (*v18) (signed int, signed char, unsigned char, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (signed short, signed short, signed char);
extern signed int (*v22) (signed short, signed short, signed char);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
extern unsigned char v27 (signed short, signed short, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned short);
unsigned short v29 (signed short, unsigned short);
unsigned short (*v30) (signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v69 = 1;
unsigned short v68 = 5;
unsigned char v67 = 6;

unsigned short v29 (signed short v70, unsigned short v71)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 2;
signed char v73 = 1;
signed char v72 = 1;
trace++;
switch (trace)
{
case 2: 
return v74;
case 4: 
return 1;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v75, unsigned short v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = 2;
unsigned short v78 = 7;
unsigned short v77 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v80;
signed char v81;
unsigned short v82;
v80 = 5 - 0;
v81 = 0 + -2;
v82 = v25 (v80, v81);
history[history_index++] = (int)v82;
}
break;
case 10: 
{
unsigned char v83;
signed char v84;
unsigned short v85;
v83 = 3 + 3;
v84 = 0 - v79;
v85 = v25 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 12: 
return v78;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v86, signed int v87, signed short v88, unsigned short v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 1;
signed char v91 = 3;
unsigned char v90 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
