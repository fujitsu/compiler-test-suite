#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (signed char, unsigned int);
signed short (*v6) (signed char, unsigned int) = v5;
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char, unsigned short, signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned short, signed char, unsigned int);
extern signed int v21 (signed short, signed int, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned short);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short) = v25;
extern unsigned char v27 (signed char, signed short, unsigned char);
extern unsigned char (*v28) (signed char, signed short, unsigned char);
unsigned char v29 (unsigned char);
unsigned char (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v63 = 1;
unsigned char v62 = 0;
signed char v61 = 3;

unsigned char v29 (unsigned char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 4;
unsigned int v66 = 0U;
signed char v65 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned char v68, signed int v69, signed short v70, unsigned short v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 2;
unsigned short v73 = 3;
unsigned char v72 = 6;
trace++;
switch (trace)
{
case 4: 
return 5;
case 8: 
return v68;
case 10: 
return 6;
default: abort ();
}
}
}
}

signed short v5 (signed char v75, unsigned int v76)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 2;
signed short v78 = -1;
signed int v77 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
