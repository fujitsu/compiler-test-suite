#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed int, unsigned char, signed short);
static signed short (*v2) (signed int, unsigned char, signed short) = v1;
extern unsigned short v3 (signed short, signed int, unsigned short, signed int);
extern unsigned short (*v4) (signed short, signed int, unsigned short, signed int);
extern signed short v5 (signed short, signed int, signed short);
extern signed short (*v6) (signed short, signed int, signed short);
extern signed int v7 (unsigned char, unsigned int, unsigned int);
extern signed int (*v8) (unsigned char, unsigned int, unsigned int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned int v11 (signed int, signed short, unsigned char);
extern unsigned int (*v12) (signed int, signed short, unsigned char);
extern unsigned int v13 (signed int, unsigned char, signed short);
extern unsigned int (*v14) (signed int, unsigned char, signed short);
signed int v15 (unsigned short, signed char);
signed int (*v16) (unsigned short, signed char) = v15;
extern signed int v17 (signed int, signed char);
extern signed int (*v18) (signed int, signed char);
extern void v19 (signed int);
extern void (*v20) (signed int);
extern void v21 (void);
extern void (*v22) (void);
void v23 (signed char, unsigned int, signed short);
void (*v24) (signed char, unsigned int, signed short) = v23;
signed short v25 (unsigned int, unsigned char, signed int);
signed short (*v26) (unsigned int, unsigned char, signed int) = v25;
extern signed char v27 (unsigned short, signed char);
extern signed char (*v28) (unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned int v32 = 5U;
unsigned char v31 = 0;

signed short v25 (unsigned int v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = -3;
signed short v38 = 0;
unsigned short v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (signed char v40, unsigned int v41, signed short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 1;
signed short v44 = -1;
signed int v43 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (unsigned short v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 3;
unsigned int v49 = 5U;
unsigned short v48 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed int v51, unsigned char v52, signed short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = -3;
unsigned int v55 = 3U;
signed int v54 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed int v57;
unsigned char v58;
signed short v59;
signed short v60;
v57 = 2 - v54;
v58 = 1 + 4;
v59 = 1 - v53;
v60 = v1 (v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 1: 
{
v21 ();
}
break;
case 3: 
{
signed short v61;
signed int v62;
unsigned short v63;
signed int v64;
unsigned short v65;
v61 = v53 - v53;
v62 = v51 + -2;
v63 = 3 + 5;
v64 = 1 - v54;
v65 = v3 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 7: 
{
signed int v66;
signed short v67;
unsigned char v68;
unsigned int v69;
v66 = 3 + v54;
v67 = v56 + v53;
v68 = 1 - 1;
v69 = v11 (v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 9: 
return 1;
case 10: 
{
signed short v70;
signed int v71;
signed short v72;
signed short v73;
v70 = 0 + v56;
v71 = -1 + -3;
v72 = v56 - v53;
v73 = v5 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 12: 
return v53;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v76;
unsigned char v77;
signed short v78;
signed short v79;
v76 = -3 - -3;
v77 = v31 + 3;
v78 = 0 - 1;
v79 = v1 (v76, v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
