#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed char, signed int, signed char, unsigned int);
static signed char (*v2) (signed char, signed int, signed char, unsigned int) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned char v5 (signed short);
extern unsigned char (*v6) (signed short);
void v7 (unsigned int, unsigned char, signed int, unsigned short);
void (*v8) (unsigned int, unsigned char, signed int, unsigned short) = v7;
signed char v9 (void);
signed char (*v10) (void) = v9;
signed char v11 (void);
signed char (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (unsigned int, unsigned char, signed short);
extern signed short (*v16) (unsigned int, unsigned char, signed short);
extern signed int v17 (signed short, signed char);
extern signed int (*v18) (signed short, signed char);
extern void v19 (unsigned short, unsigned short, signed short, unsigned int);
extern void (*v20) (unsigned short, unsigned short, signed short, unsigned int);
extern signed int v21 (unsigned int, signed int, unsigned int);
extern signed int (*v22) (unsigned int, signed int, unsigned int);
extern signed int v23 (signed char, signed char, signed char, unsigned int);
extern signed int (*v24) (signed char, signed char, signed char, unsigned int);
extern signed short v25 (signed int, signed short, unsigned int, unsigned char);
extern signed short (*v26) (signed int, signed short, unsigned int, unsigned char);
extern void v27 (unsigned char, signed int, unsigned short, signed int);
extern void (*v28) (unsigned char, signed int, unsigned short, signed int);
unsigned short v29 (unsigned int, unsigned char, signed short, unsigned char);
unsigned short (*v30) (unsigned int, unsigned char, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed char v32 = 3;
unsigned short v31 = 4;

unsigned short v29 (unsigned int v34, unsigned char v35, signed short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 7;
unsigned short v39 = 0;
unsigned short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (void)
{
{
for (;;) {
signed int v43 = -3;
signed int v42 = 0;
unsigned char v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed short v46 = -1;
signed char v45 = 3;
unsigned char v44 = 7;
trace++;
switch (trace)
{
case 10: 
{
signed int v47;
signed short v48;
unsigned int v49;
unsigned char v50;
signed short v51;
v47 = 0 - -4;
v48 = v46 - v46;
v49 = 0U - 6U;
v50 = 6 - v44;
v51 = v25 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v7 (unsigned int v52, unsigned char v53, signed int v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned short v58 = 2;
signed short v57 = 0;
unsigned int v56 = 6U;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v59;
unsigned short v60;
signed short v61;
unsigned int v62;
v59 = 2 - 5;
v60 = v58 + 5;
v61 = -1 - -1;
v62 = 7U + v52;
v19 (v59, v60, v61, v62);
}
break;
case 8: 
return;
default: abort ();
}
}
}
}

static signed char v1 (signed char v63, signed int v64, signed char v65, unsigned int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned char v69 = 5;
signed int v68 = -2;
unsigned int v67 = 7U;
trace++;
switch (trace)
{
case 0: 
{
signed char v70;
signed char v71;
signed char v72;
unsigned int v73;
signed int v74;
v70 = v65 - 0;
v71 = v63 - v65;
v72 = v63 + v63;
v73 = 3U - v67;
v74 = v23 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 2: 
{
signed char v75;
signed char v76;
signed char v77;
unsigned int v78;
signed int v79;
v75 = v65 - 0;
v76 = v63 - -4;
v77 = v65 + v63;
v78 = 2U + 3U;
v79 = v23 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 4: 
{
signed short v80;
unsigned char v81;
v80 = 3 + -4;
v81 = v5 (v80);
history[history_index++] = (int)v81;
}
break;
case 14: 
return v65;
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
signed char v84;
signed int v85;
signed char v86;
unsigned int v87;
signed char v88;
v84 = v32 - v32;
v85 = -3 + -3;
v86 = 2 - v32;
v87 = v33 + v33;
v88 = v1 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
