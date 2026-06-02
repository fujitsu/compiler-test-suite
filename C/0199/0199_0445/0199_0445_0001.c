#include <stdlib.h>
signed short v1 (signed int, unsigned short);
signed short (*v2) (signed int, unsigned short) = v1;
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
extern unsigned char v5 (signed int, unsigned char, unsigned int, signed char);
extern unsigned char (*v6) (signed int, unsigned char, unsigned int, signed char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
signed int v9 (unsigned short);
signed int (*v10) (unsigned short) = v9;
unsigned char v11 (unsigned short, unsigned int, unsigned char);
unsigned char (*v12) (unsigned short, unsigned int, unsigned char) = v11;
void v13 (unsigned short, unsigned short, unsigned char, unsigned char);
void (*v14) (unsigned short, unsigned short, unsigned char, unsigned char) = v13;
extern void v15 (void);
extern void (*v16) (void);
signed char v17 (unsigned int, unsigned char, signed short, signed char);
signed char (*v18) (unsigned int, unsigned char, signed short, signed char) = v17;
extern signed short v19 (signed char, signed short);
extern signed short (*v20) (signed char, signed short);
extern signed short v21 (unsigned int, signed char, unsigned short, signed char);
extern signed short (*v22) (unsigned int, signed char, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
static signed int v25 (void);
static signed int (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern signed int v29 (unsigned int, unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v41 = -1;
signed short v40 = -3;
signed char v39 = -4;

static signed int v25 (void)
{
{
for (;;) {
signed int v44 = 0;
signed char v43 = -3;
unsigned int v42 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned int v45;
unsigned int v46;
unsigned short v47;
signed int v48;
v45 = v42 + 6U;
v46 = v42 - 3U;
v47 = 4 + 6;
v48 = v29 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
unsigned int v49;
unsigned int v50;
unsigned short v51;
signed int v52;
v49 = v42 - 7U;
v50 = 2U - v42;
v51 = 5 - 7;
v52 = v29 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 9: 
return 0;
default: abort ();
}
}
}
}

signed char v17 (unsigned int v53, unsigned char v54, signed short v55, signed char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 4U;
unsigned short v58 = 1;
unsigned int v57 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned short v60, unsigned short v61, unsigned char v62, unsigned char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned int v66 = 0U;
signed int v65 = 2;
unsigned short v64 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v67;
v67 = v25 ();
history[history_index++] = (int)v67;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned short v68, unsigned int v69, unsigned char v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 2;
signed short v72 = 2;
unsigned int v71 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned short v77 = 6;
signed int v76 = -1;
unsigned int v75 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
unsigned short v81 = 2;
signed int v80 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v83;
unsigned int v84;
unsigned short v85;
signed int v86;
v83 = v82 - 1U;
v84 = 3U - 2U;
v85 = 1 - 2;
v86 = v29 (v83, v84, v85);
history[history_index++] = (int)v86;
}
break;
case 2: 
{
signed int v87;
unsigned char v88;
unsigned int v89;
signed char v90;
unsigned char v91;
v87 = v80 + v80;
v88 = 7 + 3;
v89 = 5U + 5U;
v90 = 2 - 2;
v91 = v5 (v87, v88, v89, v90);
history[history_index++] = (int)v91;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
