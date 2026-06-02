#include <stdlib.h>
signed char v1 (signed char, signed char, unsigned int, unsigned char);
signed char (*v2) (signed char, signed char, unsigned int, unsigned char) = v1;
extern signed char v3 (unsigned char, signed short);
extern signed char (*v4) (unsigned char, signed short);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
static signed int v9 (unsigned char, signed short, signed short);
static signed int (*v10) (unsigned char, signed short, signed short) = v9;
void v11 (unsigned short, unsigned short, signed short);
void (*v12) (unsigned short, unsigned short, signed short) = v11;
static unsigned short v13 (signed int, unsigned int, signed short);
static unsigned short (*v14) (signed int, unsigned int, signed short) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed char v19 (unsigned int);
extern signed char (*v20) (unsigned int);
extern unsigned short v21 (unsigned short);
extern unsigned short (*v22) (unsigned short);
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (signed int, unsigned int);
extern signed char (*v28) (signed int, unsigned int);
extern signed short v29 (unsigned char, signed char, signed int);
extern signed short (*v30) (unsigned char, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v46 = 0;
signed char v45 = -1;
signed short v44 = 2;

static unsigned short v13 (signed int v47, unsigned int v48, signed short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned int v52 = 2U;
unsigned short v51 = 1;
unsigned short v50 = 6;
trace++;
switch (trace)
{
case 8: 
{
unsigned char v53;
v53 = 7 + 2;
v15 (v53);
}
break;
case 14: 
return v50;
default: abort ();
}
}
}
}

void v11 (unsigned short v54, unsigned short v55, signed short v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = -1;
signed int v58 = 1;
signed short v57 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v9 (unsigned char v60, signed short v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -4;
unsigned short v64 = 6;
signed short v63 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed int v66;
unsigned int v67;
signed short v68;
unsigned short v69;
v66 = 1 + -4;
v67 = 5U - 0U;
v68 = v62 + v63;
v69 = v13 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 15: 
return -3;
default: abort ();
}
}
}
}

signed char v1 (signed char v70, signed char v71, unsigned int v72, unsigned char v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
signed short v76 = 0;
signed short v75 = 0;
signed char v74 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v77;
v77 = 0 - 1;
v15 (v77);
}
break;
case 4: 
{
unsigned short v78;
unsigned short v79;
v78 = 1 + 3;
v79 = v21 (v78);
history[history_index++] = (int)v79;
}
break;
case 6: 
{
unsigned char v80;
signed short v81;
signed short v82;
signed int v83;
v80 = v73 + v73;
v81 = v76 + 0;
v82 = 2 - 1;
v83 = v9 (v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 16: 
return v74;
default: abort ();
}
}
}
}
