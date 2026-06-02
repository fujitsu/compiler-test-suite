#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned char, signed short, unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned char, signed short, unsigned int, unsigned short);
unsigned char v5 (signed int, signed short, signed char, signed short);
unsigned char (*v6) (signed int, signed short, signed char, signed short) = v5;
unsigned short v7 (unsigned char, signed char, unsigned char);
unsigned short (*v8) (unsigned char, signed char, unsigned char) = v7;
signed char v9 (signed short);
signed char (*v10) (signed short) = v9;
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned char v15 (unsigned short, unsigned char, signed char);
extern unsigned char (*v16) (unsigned short, unsigned char, signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed char v19 (unsigned int, unsigned char, signed short, signed int);
extern signed char (*v20) (unsigned int, unsigned char, signed short, signed int);
signed int v21 (signed int);
signed int (*v22) (signed int) = v21;
extern unsigned int v23 (unsigned int, signed int, signed int);
extern unsigned int (*v24) (unsigned int, signed int, signed int);
extern signed int v25 (unsigned int, signed char, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed char, signed short, unsigned int);
extern unsigned int v27 (unsigned int);
extern unsigned int (*v28) (unsigned int);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 2;
signed short v68 = -3;
unsigned short v67 = 7;

signed int v21 (signed int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned int v73 = 3U;
signed short v72 = -4;
unsigned short v71 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 2;
unsigned char v76 = 5;
signed char v75 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v78, signed char v79, unsigned char v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = -4;
unsigned short v82 = 6;
unsigned int v81 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v84, signed short v85, signed char v86, signed short v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed int v90 = 0;
signed char v89 = -1;
signed short v88 = 0;
trace++;
switch (trace)
{
case 2: 
return 6;
case 4: 
return 6;
case 8: 
return 4;
case 10: 
return 0;
default: abort ();
}
}
}
}
