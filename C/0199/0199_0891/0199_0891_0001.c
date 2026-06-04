#include <stdlib.h>
signed int v1 (signed char);
signed int (*v2) (signed char) = v1;
extern signed short v3 (void);
extern signed short (*v4) (void);
extern signed char v5 (unsigned char, signed char, unsigned int);
extern signed char (*v6) (unsigned char, signed char, unsigned int);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed short);
extern signed int (*v10) (unsigned int, signed short);
extern unsigned char v11 (signed int, unsigned short);
extern unsigned char (*v12) (signed int, unsigned short);
extern unsigned short v13 (unsigned char, signed short);
extern unsigned short (*v14) (unsigned char, signed short);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed short v17 (signed short, unsigned int, signed short);
signed short (*v18) (signed short, unsigned int, signed short) = v17;
static signed int v19 (signed char, unsigned int);
static signed int (*v20) (signed char, unsigned int) = v19;
extern signed int v21 (signed short, signed char, unsigned int);
extern signed int (*v22) (signed short, signed char, unsigned int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (signed char, signed int, signed char);
extern unsigned int (*v26) (signed char, signed int, signed char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern signed char v29 (unsigned char, unsigned short, unsigned char);
extern signed char (*v30) (unsigned char, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v54 = 0;
unsigned int v53 = 6U;
signed char v52 = 3;

static signed int v19 (signed char v55, unsigned int v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 6U;
unsigned int v58 = 6U;
unsigned short v57 = 3;
trace++;
switch (trace)
{
case 3: 
return 1;
default: abort ();
}
}
}
}

signed short v17 (signed short v60, unsigned int v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
signed short v64 = -1;
unsigned short v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (signed char v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 2;
unsigned int v68 = 7U;
unsigned char v67 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v70;
signed int v71;
v70 = v67 - v67;
v71 = v7 (v70);
history[history_index++] = (int)v71;
}
break;
case 2: 
{
signed char v72;
unsigned int v73;
signed int v74;
v72 = v66 + v66;
v73 = v68 + 1U;
v74 = v19 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 4: 
{
unsigned char v75;
signed short v76;
unsigned short v77;
v75 = v67 + v67;
v76 = -4 - -2;
v77 = v13 (v75, v76);
history[history_index++] = (int)v77;
}
break;
case 6: 
{
signed char v78;
signed int v79;
signed char v80;
unsigned int v81;
v78 = v66 - 1;
v79 = -2 - 0;
v80 = 0 - v66;
v81 = v25 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 8: 
{
signed char v82;
signed int v83;
signed char v84;
unsigned int v85;
v82 = 3 + -2;
v83 = 2 - 0;
v84 = v66 + v66;
v85 = v25 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 10: 
{
unsigned char v86;
signed int v87;
v86 = 7 - v67;
v87 = v27 (v86);
history[history_index++] = (int)v87;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
