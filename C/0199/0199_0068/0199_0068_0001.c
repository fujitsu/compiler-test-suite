#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed short v3 (unsigned char, signed char);
signed short (*v4) (unsigned char, signed char) = v3;
extern signed short v5 (signed char, unsigned char, unsigned char);
extern signed short (*v6) (signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed int);
extern signed int (*v8) (signed short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (signed short, unsigned char, signed int);
unsigned char (*v12) (signed short, unsigned char, signed int) = v11;
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern unsigned char v15 (signed int, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short);
signed int v17 (unsigned short, signed int);
signed int (*v18) (unsigned short, signed int) = v17;
extern void v19 (signed int, unsigned int, signed char, signed char);
extern void (*v20) (signed int, unsigned int, signed char, signed char);
extern void v21 (unsigned int, signed int, unsigned short, signed int);
extern void (*v22) (unsigned int, signed int, unsigned short, signed int);
signed short v23 (unsigned char, signed int);
signed short (*v24) (unsigned char, signed int) = v23;
extern signed char v25 (unsigned short, unsigned short);
extern signed char (*v26) (unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (signed char, signed int);
extern unsigned int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v46 = 2U;
signed int v45 = -3;
unsigned char v44 = 4;

signed short v23 (unsigned char v47, signed int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = -1;
unsigned char v50 = 1;
unsigned char v49 = 7;
trace++;
switch (trace)
{
case 7: 
return -3;
case 11: 
return 0;
default: abort ();
}
}
}
}

signed int v17 (unsigned short v52, signed int v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 1;
unsigned short v55 = 0;
unsigned short v54 = 2;
trace++;
switch (trace)
{
case 1: 
return v53;
case 9: 
return v53;
default: abort ();
}
}
}
}

unsigned char v11 (signed short v57, unsigned char v58, signed int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned char v62 = 1;
signed short v61 = -2;
unsigned char v60 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned char v63, signed char v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 3;
unsigned int v66 = 5U;
signed short v65 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
