#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned int);
unsigned int (*v2) (unsigned short, unsigned int) = v1;
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern unsigned char v5 (signed char, signed int, signed int, signed char);
extern unsigned char (*v6) (signed char, signed int, signed int, signed char);
unsigned short v7 (signed int, unsigned char, signed char, signed int);
unsigned short (*v8) (signed int, unsigned char, signed char, signed int) = v7;
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (signed char, unsigned short);
extern unsigned char (*v14) (signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
extern void v17 (unsigned short, signed char, unsigned int);
extern void (*v18) (unsigned short, signed char, unsigned int);
extern unsigned char v19 (signed short, signed short);
extern unsigned char (*v20) (signed short, signed short);
extern signed short v21 (unsigned char, unsigned char, signed char);
extern signed short (*v22) (unsigned char, unsigned char, signed char);
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (signed int, signed char);
extern void (*v28) (signed int, signed char);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = 2;
unsigned char v52 = 7;
signed int v51 = 0;

unsigned short v7 (signed int v54, unsigned char v55, signed char v56, signed int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 1;
signed short v59 = 3;
unsigned char v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v61, unsigned int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 2;
unsigned short v64 = 6;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v66;
unsigned int v67;
signed char v68;
v66 = v62 + 7U;
v67 = v62 + v63;
v68 = v15 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 2: 
{
signed int v69;
unsigned int v70;
v69 = 3 - 1;
v70 = v29 (v69);
history[history_index++] = (int)v70;
}
break;
case 4: 
{
unsigned short v71;
signed char v72;
unsigned int v73;
v71 = 7 + 1;
v72 = -3 - 3;
v73 = 3U - 1U;
v17 (v71, v72, v73);
}
break;
case 12: 
return v63;
default: abort ();
}
}
}
}
