#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned char);
extern signed int (*v2) (unsigned int, unsigned char);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned int v11 (signed short, signed short);
extern unsigned int (*v12) (signed short, signed short);
unsigned int v13 (unsigned short);
unsigned int (*v14) (unsigned short) = v13;
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern unsigned char v19 (signed int, unsigned char, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char, unsigned char);
extern signed short v21 (signed int, signed short, signed int);
extern signed short (*v22) (signed int, signed short, signed int);
extern signed short v23 (signed char);
extern signed short (*v24) (signed char);
unsigned int v25 (unsigned short, unsigned short, unsigned short, signed short);
unsigned int (*v26) (unsigned short, unsigned short, unsigned short, signed short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (signed short, unsigned int, signed short);
extern unsigned int (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v52 = 1;
unsigned short v51 = 6;
signed char v50 = 1;

unsigned int v25 (unsigned short v53, unsigned short v54, unsigned short v55, signed short v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned char v59 = 0;
signed char v58 = -4;
signed short v57 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v60;
v60 = v27 ();
history[history_index++] = (int)v60;
}
break;
case 5: 
{
signed short v61;
signed short v62;
unsigned int v63;
v61 = v56 - v56;
v62 = 2 + v56;
v63 = v11 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 7: 
{
unsigned int v64;
v64 = v27 ();
history[history_index++] = (int)v64;
}
break;
case 9: 
{
signed short v65;
signed short v66;
unsigned int v67;
v65 = 2 - v56;
v66 = v57 - v57;
v67 = v11 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 11: 
return 3U;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed char v70 = -2;
signed short v69 = 0;
signed char v68 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = 3;
signed int v73 = -2;
unsigned short v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v77 = 2;
unsigned int v76 = 0U;
unsigned char v75 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
