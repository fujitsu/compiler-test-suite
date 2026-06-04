#include <stdio.h>
#include <stdlib.h>
static void v1 (signed char, signed short, signed int);
static void (*v2) (signed char, signed short, signed int) = v1;
extern signed int v3 (unsigned short, unsigned char);
extern signed int (*v4) (unsigned short, unsigned char);
void v5 (signed int, unsigned int, unsigned char);
void (*v6) (signed int, unsigned int, unsigned char) = v5;
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed int v13 (unsigned int, unsigned int, unsigned int);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int);
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
extern signed char v19 (signed short, signed int, signed char, unsigned short);
extern signed char (*v20) (signed short, signed int, signed char, unsigned short);
extern signed char v21 (unsigned char, unsigned int, signed int, unsigned short);
extern signed char (*v22) (unsigned char, unsigned int, signed int, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed int, signed char, signed short);
extern signed short (*v26) (signed int, signed char, signed short);
void v27 (unsigned char, unsigned char, unsigned int, unsigned short);
void (*v28) (unsigned char, unsigned char, unsigned int, unsigned short) = v27;
extern signed short v29 (signed short, signed int, signed int);
extern signed short (*v30) (signed short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned short v32 = 2;
unsigned int v31 = 6U;

void v27 (unsigned char v34, unsigned char v35, unsigned int v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -3;
signed char v39 = -3;
unsigned short v38 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 0;
unsigned short v43 = 7;
unsigned short v42 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v45, unsigned int v46, unsigned char v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 0U;
unsigned int v49 = 7U;
signed short v48 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v51;
unsigned int v52;
signed int v53;
unsigned short v54;
signed char v55;
v51 = v47 + 0;
v52 = v50 - v49;
v53 = v45 - 3;
v54 = 7 - 1;
v55 = v21 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 5: 
{
unsigned char v56;
unsigned int v57;
signed int v58;
unsigned short v59;
signed char v60;
v56 = 3 - 5;
v57 = v49 + 5U;
v58 = v45 + v45;
v59 = 2 - 6;
v60 = v21 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 8: 
{
unsigned char v61;
unsigned int v62;
signed int v63;
unsigned short v64;
signed char v65;
v61 = v47 - 7;
v62 = v50 + v46;
v63 = v45 + -3;
v64 = 4 - 5;
v65 = v21 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 10: 
{
unsigned char v66;
unsigned int v67;
signed int v68;
unsigned short v69;
signed char v70;
v66 = 4 + v47;
v67 = v49 + v50;
v68 = v45 - 1;
v69 = 0 + 2;
v70 = v21 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return;
case 15: 
return;
case 18: 
return;
default: abort ();
}
}
}
}

static void v1 (signed char v71, signed short v72, signed int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 2U;
signed int v75 = -2;
signed char v74 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed short v77;
signed int v78;
signed int v79;
signed short v80;
v77 = 0 - v72;
v78 = v73 - v73;
v79 = v73 + v73;
v80 = v29 (v77, v78, v79);
history[history_index++] = (int)v80;
}
break;
case 20: 
return;
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
signed char v83;
signed short v84;
signed int v85;
v83 = -3 - -4;
v84 = v33 - v33;
v85 = 3 + 2;
v1 (v83, v84, v85);
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
