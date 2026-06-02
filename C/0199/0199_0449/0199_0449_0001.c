#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
extern unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char);
unsigned short v7 (unsigned short, signed short);
unsigned short (*v8) (unsigned short, signed short) = v7;
extern unsigned char v9 (signed char, unsigned short, signed short);
extern unsigned char (*v10) (signed char, unsigned short, signed short);
extern signed char v11 (signed short, unsigned short, unsigned int);
extern signed char (*v12) (signed short, unsigned short, unsigned int);
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
unsigned int v19 (unsigned char, unsigned short, unsigned char, unsigned char);
unsigned int (*v20) (unsigned char, unsigned short, unsigned char, unsigned char) = v19;
extern signed short v21 (unsigned int, signed short, unsigned int);
extern signed short (*v22) (unsigned int, signed short, unsigned int);
unsigned short v23 (unsigned int, unsigned short, unsigned char);
unsigned short (*v24) (unsigned int, unsigned short, unsigned char) = v23;
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed char, signed int, unsigned int);
extern unsigned int (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v45 = 4;
signed char v44 = 3;
unsigned short v43 = 3;

unsigned short v23 (unsigned int v46, unsigned short v47, unsigned char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 2;
signed int v50 = -1;
unsigned int v49 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned char v52, unsigned short v53, unsigned char v54, unsigned char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed short v58 = -4;
unsigned char v57 = 3;
signed char v56 = 1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v59;
signed char v60;
v59 = v57 - v55;
v60 = v25 (v59);
history[history_index++] = (int)v60;
}
break;
case 7: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned short v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 5U;
unsigned char v64 = 5;
unsigned short v63 = 2;
trace++;
switch (trace)
{
case 1: 
return v63;
default: abort ();
}
}
}
}
