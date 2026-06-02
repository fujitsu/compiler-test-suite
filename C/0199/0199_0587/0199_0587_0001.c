#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned int, signed short);
extern signed int (*v4) (signed char, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned char, unsigned int);
extern signed char (*v8) (signed int, unsigned char, unsigned int);
unsigned char v9 (unsigned short);
unsigned char (*v10) (unsigned short) = v9;
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
unsigned int v13 (unsigned char);
unsigned int (*v14) (unsigned char) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
unsigned short v21 (signed char, signed short);
unsigned short (*v22) (signed char, signed short) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
signed char v25 (signed char, signed short, signed char, unsigned int);
signed char (*v26) (signed char, signed short, signed char, unsigned int) = v25;
extern unsigned int v27 (unsigned char, signed int, signed char, signed int);
extern unsigned int (*v28) (unsigned char, signed int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v46 = 5;
unsigned int v45 = 5U;
signed short v44 = 1;

signed char v25 (signed char v47, signed short v48, signed char v49, unsigned int v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned short v53 = 5;
unsigned char v52 = 7;
unsigned int v51 = 4U;
trace++;
switch (trace)
{
case 2: 
return -2;
case 4: 
return v47;
default: abort ();
}
}
}
}

unsigned short v21 (signed char v54, signed short v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 5;
unsigned char v57 = 4;
signed int v56 = -3;
trace++;
switch (trace)
{
case 11: 
return 3;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed int v62 = 0;
unsigned char v61 = 7;
unsigned int v60 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 0U;
unsigned char v65 = 1;
unsigned char v64 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
