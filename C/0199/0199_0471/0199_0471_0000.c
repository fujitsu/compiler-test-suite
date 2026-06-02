#include <stdio.h>
#include <stdlib.h>
static signed short v1 (signed char, signed char, signed char);
static signed short (*v2) (signed char, signed char, signed char) = v1;
unsigned short v3 (signed short, unsigned short);
unsigned short (*v4) (signed short, unsigned short) = v3;
extern unsigned int v5 (unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned short, unsigned int, unsigned char, signed int);
extern unsigned char (*v8) (unsigned short, unsigned int, unsigned char, signed int);
extern signed char v9 (signed int, unsigned char, signed char);
extern signed char (*v10) (signed int, unsigned char, signed char);
extern signed int v11 (unsigned short, signed char, signed int, signed int);
extern signed int (*v12) (unsigned short, signed char, signed int, signed int);
extern unsigned short v13 (signed char, unsigned int);
extern unsigned short (*v14) (signed char, unsigned int);
void v15 (unsigned short, signed int, signed short);
void (*v16) (unsigned short, signed int, signed short) = v15;
signed char v17 (unsigned short, unsigned char);
signed char (*v18) (unsigned short, unsigned char) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
static unsigned char v21 (signed int, unsigned char, signed short, signed int);
static unsigned char (*v22) (signed int, unsigned char, signed short, signed int) = v21;
extern void v23 (unsigned int, signed int, unsigned int, unsigned short);
extern void (*v24) (unsigned int, signed int, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed int v27 (signed int, signed short);
extern signed int (*v28) (signed int, signed short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed char v32 = -4;
signed short v31 = -2;

static unsigned char v21 (signed int v34, unsigned char v35, signed short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 2U;
unsigned short v39 = 2;
signed short v38 = 0;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v41;
signed char v42;
signed int v43;
signed int v44;
signed int v45;
v41 = v39 - v39;
v42 = 2 + -3;
v43 = v37 - -4;
v44 = v34 - v34;
v45 = v11 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 13: 
return 2;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v46, unsigned char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 2U;
signed int v49 = -4;
unsigned short v48 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned short v51, signed int v52, signed short v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 3;
signed int v55 = -3;
signed int v54 = -4;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v57;
v57 = v25 ();
history[history_index++] = (int)v57;
}
break;
case 9: 
{
unsigned short v58;
v58 = v25 ();
history[history_index++] = (int)v58;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v3 (signed short v59, unsigned short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed char v63 = -2;
signed char v62 = -4;
signed int v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (signed char v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed short v69 = -2;
unsigned int v68 = 2U;
unsigned short v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v70;
unsigned int v71;
unsigned char v72;
signed int v73;
unsigned char v74;
v70 = 0 - 2;
v71 = v68 - 2U;
v72 = 0 - 4;
v73 = -1 - 2;
v74 = v7 (v70, v71, v72, v73);
history[history_index++] = (int)v74;
}
break;
case 4: 
{
signed int v75;
unsigned char v76;
signed short v77;
signed int v78;
unsigned char v79;
v75 = 2 - -3;
v76 = 7 - 6;
v77 = -1 - 3;
v78 = -1 - 2;
v79 = v21 (v75, v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 14: 
return -4;
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
signed char v82;
signed char v83;
signed char v84;
signed short v85;
v82 = -2 - v32;
v83 = -3 - 2;
v84 = -2 - v32;
v85 = v1 (v82, v83, v84);
history[history_index++] = (int)v85;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
