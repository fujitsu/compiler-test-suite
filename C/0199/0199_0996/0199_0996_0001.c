#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
extern signed int v7 (unsigned char, signed char, signed char);
extern signed int (*v8) (unsigned char, signed char, signed char);
signed int v9 (void);
signed int (*v10) (void) = v9;
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed short v13 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v15 (unsigned int, unsigned short, signed int);
extern unsigned int (*v16) (unsigned int, unsigned short, signed int);
extern signed int v17 (signed int, signed int, unsigned short);
extern signed int (*v18) (signed int, signed int, unsigned short);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
signed int v21 (unsigned char);
signed int (*v22) (unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 2;
signed short v46 = 1;
unsigned int v45 = 0U;

signed char v29 (void)
{
{
for (;;) {
signed short v50 = 2;
unsigned char v49 = 0;
unsigned char v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -4;
unsigned short v53 = 4;
signed short v52 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed short v57 = -3;
unsigned char v56 = 3;
signed short v55 = 1;
trace++;
switch (trace)
{
case 1: 
return -4;
case 3: 
{
signed int v58;
unsigned char v59;
unsigned char v60;
signed int v61;
signed short v62;
v58 = 2 - -2;
v59 = v56 - 2;
v60 = v56 - v56;
v61 = 3 + -4;
v62 = v13 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
break;
case 5: 
{
signed int v63;
unsigned char v64;
unsigned char v65;
signed int v66;
signed short v67;
v63 = 1 + -4;
v64 = 7 - 4;
v65 = v56 + 0;
v66 = 1 - 1;
v67 = v13 (v63, v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}
