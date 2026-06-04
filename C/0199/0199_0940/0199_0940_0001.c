#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned char v3 (unsigned int, signed int, signed int, signed short);
extern unsigned char (*v4) (unsigned int, signed int, signed int, signed short);
extern signed int v5 (unsigned int);
extern signed int (*v6) (unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern signed int v13 (unsigned int, unsigned int, unsigned short);
extern signed int (*v14) (unsigned int, unsigned int, unsigned short);
extern unsigned int v15 (unsigned short, unsigned int, unsigned char);
extern unsigned int (*v16) (unsigned short, unsigned int, unsigned char);
extern unsigned int v17 (unsigned char, unsigned int, signed short);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short);
unsigned char v19 (unsigned int, signed short, signed int, unsigned char);
unsigned char (*v20) (unsigned int, signed short, signed int, unsigned char) = v19;
extern unsigned int v21 (unsigned char);
extern unsigned int (*v22) (unsigned char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned int v25 (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned char v29 (unsigned char, unsigned short);
extern unsigned char (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 5;
unsigned short v52 = 6;
unsigned int v51 = 6U;

unsigned char v19 (unsigned int v54, signed short v55, signed int v56, unsigned char v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -2;
unsigned int v59 = 6U;
signed char v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned short v63 = 0;
unsigned char v62 = 2;
unsigned int v61 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v64;
signed int v65;
signed int v66;
signed short v67;
unsigned char v68;
v64 = 0U + v61;
v65 = 1 - 0;
v66 = -2 + -4;
v67 = -4 + 1;
v68 = v3 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 2: 
{
unsigned short v69;
v69 = v7 ();
history[history_index++] = (int)v69;
}
break;
case 6: 
{
unsigned int v70;
signed int v71;
v70 = 4U - 7U;
v71 = v5 (v70);
history[history_index++] = (int)v71;
}
break;
case 14: 
return v63;
default: abort ();
}
}
}
}
