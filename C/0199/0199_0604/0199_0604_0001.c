#include <stdlib.h>
signed short v1 (signed char, unsigned int, unsigned short);
signed short (*v2) (signed char, unsigned int, unsigned short) = v1;
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern unsigned char v5 (signed char, signed short);
extern unsigned char (*v6) (signed char, signed short);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
extern unsigned short v11 (unsigned short, unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned short, unsigned int);
extern unsigned char v13 (unsigned int, unsigned char, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int);
extern signed int v15 (signed short, signed short, unsigned char, signed char);
extern signed int (*v16) (signed short, signed short, unsigned char, signed char);
extern signed short v17 (signed short, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, signed char);
extern unsigned char v19 (unsigned char, unsigned char, signed short);
extern unsigned char (*v20) (unsigned char, unsigned char, signed short);
unsigned int v21 (unsigned int);
unsigned int (*v22) (unsigned int) = v21;
extern void v23 (unsigned int, signed int, signed short, signed short);
extern void (*v24) (unsigned int, signed int, signed short, signed short);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern void v27 (void);
extern void (*v28) (void);
extern signed char v29 (unsigned int);
extern signed char (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v42 = -2;
signed int v41 = -3;
unsigned short v40 = 6;

unsigned int v21 (unsigned int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 5U;
unsigned short v45 = 6;
unsigned int v44 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v47, unsigned int v48, unsigned short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned short v52 = 0;
signed char v51 = 0;
unsigned short v50 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v53;
unsigned short v54;
unsigned int v55;
unsigned short v56;
v53 = 5 - v52;
v54 = v52 - v52;
v55 = 4U + 5U;
v56 = v11 (v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 2: 
{
unsigned int v57;
unsigned char v58;
signed int v59;
unsigned char v60;
v57 = v48 - 6U;
v58 = 5 + 1;
v59 = 1 - 1;
v60 = v13 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 4: 
{
unsigned int v61;
unsigned char v62;
signed short v63;
signed char v64;
v61 = 3U - 2U;
v62 = 0 + 2;
v63 = 0 + 2;
v64 = v25 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 6: 
{
signed int v65;
unsigned int v66;
unsigned char v67;
v65 = 1 + -2;
v66 = v48 - v48;
v67 = v9 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 8: 
{
unsigned short v68;
v68 = v7 ();
history[history_index++] = (int)v68;
}
break;
case 10: 
{
unsigned short v69;
v69 = 1 - v52;
v3 (v69);
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
