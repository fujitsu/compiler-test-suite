#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, unsigned char, unsigned int, signed int);
extern void (*v2) (unsigned short, unsigned char, unsigned int, signed int);
unsigned int v3 (unsigned int, signed int, signed int, unsigned char);
unsigned int (*v4) (unsigned int, signed int, signed int, unsigned char) = v3;
extern signed int v5 (signed short, signed char, signed int, unsigned int);
extern signed int (*v6) (signed short, signed char, signed int, unsigned int);
extern unsigned char v7 (unsigned char, signed short, signed short);
extern unsigned char (*v8) (unsigned char, signed short, signed short);
extern unsigned char v9 (unsigned int, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v10) (unsigned int, unsigned short, unsigned int, unsigned char);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern signed int v15 (signed int, unsigned short, signed int, signed short);
extern signed int (*v16) (signed int, unsigned short, signed int, signed short);
extern unsigned int v17 (unsigned char, unsigned int, signed short, signed int);
extern unsigned int (*v18) (unsigned char, unsigned int, signed short, signed int);
extern signed short v19 (void);
extern signed short (*v20) (void);
static unsigned char v21 (unsigned char, unsigned short);
static unsigned char (*v22) (unsigned char, unsigned short) = v21;
extern unsigned short v23 (signed int, signed short, unsigned short, signed short);
extern unsigned short (*v24) (signed int, signed short, unsigned short, signed short);
void v25 (signed int, unsigned int);
void (*v26) (signed int, unsigned int) = v25;
static signed int v27 (signed short);
static signed int (*v28) (signed short) = v27;
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 6U;
signed char v31 = 1;

static signed int v27 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 0;
signed int v36 = -4;
unsigned int v35 = 3U;
trace++;
switch (trace)
{
case 9: 
return v36;
case 11: 
return v36;
default: abort ();
}
}
}
}

void v25 (signed int v38, unsigned int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
signed int v41 = -2;
unsigned short v40 = 4;
trace++;
switch (trace)
{
case 8: 
{
signed short v43;
signed int v44;
v43 = -2 - -2;
v44 = v27 (v43);
history[history_index++] = (int)v44;
}
break;
case 10: 
{
signed short v45;
signed int v46;
v45 = 3 - -4;
v46 = v27 (v45);
history[history_index++] = (int)v46;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static unsigned char v21 (unsigned char v47, unsigned short v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 1;
signed short v50 = -1;
unsigned int v49 = 1U;
trace++;
switch (trace)
{
case 4: 
return v47;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned int v52, signed int v53, signed int v54, unsigned char v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -3;
unsigned char v57 = 0;
signed char v56 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v59;
unsigned short v60;
unsigned char v61;
v59 = v55 + v55;
v60 = 7 - 2;
v61 = v21 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 5: 
{
signed short v62;
signed char v63;
signed int v64;
unsigned int v65;
signed int v66;
v62 = 1 + -4;
v63 = 0 - v58;
v64 = v54 + -1;
v65 = 3U - 3U;
v66 = v5 (v62, v63, v64, v65);
history[history_index++] = (int)v66;
}
break;
case 15: 
return v52;
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
unsigned short v69;
unsigned char v70;
unsigned int v71;
signed int v72;
v69 = 3 + 0;
v70 = 5 + 0;
v71 = 6U + 3U;
v72 = -1 - -4;
v1 (v69, v70, v71, v72);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
